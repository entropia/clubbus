/*
 * Forked and modified from slcanpty for EDEN purposes.
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <fcntl.h>
#include <termios.h>

#include <net/if.h>
#include <sys/socket.h>
#include <sys/ioctl.h>
#include <sys/stat.h>
#include <sys/types.h>

#include <linux/can.h>
#include <linux/can/raw.h>

/* maximum rx buffer len: extended CAN frame with timestamp */
#define SLC_MTU (sizeof("T1111222281122334455667788EA5F\r")+1)

//#define DEBUG

static int asc2nibble(char c)
{

	if ((c >= '0') && (c <= '9'))
		return c - '0';

	if ((c >= 'A') && (c <= 'F'))
		return c - 'A' + 10;

	if ((c >= 'a') && (c <= 'f'))
		return c - 'a' + 10;

	return 16; /* error */
}

/* read data from pty, send CAN frames to CAN socket and answer commands */
int pty2can(int socket)
{
	int nbytes;
	char cmd;
	char buf[200];
	int ptr;
	struct can_frame frame;
	int tmp, i;

	nbytes = read(0, &buf, sizeof(buf)-1);
	if (nbytes < 0) {
		perror("read pty");
		return 1;
	}

rx_restart:
	/* remove trailing '\r' characters to be robust against some apps */
	while (buf[0] == '\r' && nbytes > 0) {
		for (tmp = 0; tmp < nbytes; tmp++)
			buf[tmp] = buf[tmp+1];
		nbytes--;
	}

	if (!nbytes)
		return 0;

	cmd = buf[0];
	buf[nbytes] = 0;

	/* catch unknown commands */
	if ((cmd != 't') && (cmd != 'T') &&
	    (cmd != 'r') && (cmd != 'R')) {
		ptr = nbytes-1;
		goto rx_out;
	}

	if (cmd & 0x20) /* tiny chars 'r' 't' => SFF */
		ptr = 4; /* dlc position tiiid */
	else
		ptr = 9; /* dlc position Tiiiiiiiid */

	*(unsigned long long *) (&frame.data) = 0ULL; /* clear data[] */

	if ((cmd | 0x20) == 'r' && buf[ptr] != '0') {

		/* 
		 * RTR frame without dlc information!
		 * This is against the SLCAN spec but sent
		 * by a commercial CAN tool ... so we are
		 * robust against this protocol violation.
		 */

		frame.can_dlc = buf[ptr]; /* save following byte */

		buf[ptr] = 0; /* terminate can_id string */

		frame.can_id = strtoul(buf+1, NULL, 16);
		frame.can_id |= CAN_RTR_FLAG;

		if (!(cmd & 0x20)) /* NO tiny chars => EFF */
			frame.can_id |= CAN_EFF_FLAG;

		buf[ptr]  = frame.can_dlc; /* restore following byte */
		frame.can_dlc = 0;
		ptr--; /* we have no dlc component in the violation case */

	} else {

		if (!(buf[ptr] >= '0' && buf[ptr] < '9'))
			goto rx_out;

		frame.can_dlc = buf[ptr] - '0'; /* get dlc from ASCII val */

		buf[ptr] = 0; /* terminate can_id string */

		frame.can_id = strtoul(buf+1, NULL, 16);

		if (!(cmd & 0x20)) /* NO tiny chars => EFF */
			frame.can_id |= CAN_EFF_FLAG;

		if ((cmd | 0x20) == 'r') /* RTR frame */
			frame.can_id |= CAN_RTR_FLAG;

		for (i = 0, ptr++; i < frame.can_dlc; i++) {

			tmp = asc2nibble(buf[ptr++]);
			if (tmp > 0x0F)
				goto rx_out;
			frame.data[i] = (tmp << 4);
			tmp = asc2nibble(buf[ptr++]);
			if (tmp > 0x0F)
				goto rx_out;
			frame.data[i] |= tmp;
		}
		/* point to last real data */
		if (frame.can_dlc)
			ptr--;
	}

	nbytes = write(socket, &frame, sizeof(frame));
	if (nbytes != sizeof(frame)) {
		perror("write socket");
		return 1;
	}

rx_out:
	/* check if there is another command in this buffer */
	if (nbytes > ptr+1) {
		for (tmp = 0, ptr++; ptr+tmp < nbytes; tmp++)
			buf[tmp] = buf[ptr+tmp];
		nbytes = tmp;
		goto rx_restart;
	}

	return 0;
}

/* read CAN frames from CAN interface and write it to the pty */
int can2pty(int socket) {
	int nbytes;
	char cmd;
	char buf[SLC_MTU];
	int ptr;
	struct can_frame frame;
	int i;

	nbytes = read(socket, &frame, sizeof(frame));
	if (nbytes != sizeof(frame)) {
		perror("read socket");
		return 1;
	}

	/* convert to slcan ASCII frame */
	if (frame.can_id & CAN_RTR_FLAG)
		cmd = 'R'; /* becomes 'r' in SFF format */
	else
		cmd = 'T'; /* becomes 't' in SFF format */

	if (frame.can_id & CAN_EFF_FLAG)
		sprintf(buf, "%c%08X%d", cmd,
			frame.can_id & CAN_EFF_MASK,
			frame.can_dlc);
	else
		sprintf(buf, "%c%03X%d", cmd | 0x20,
			frame.can_id & CAN_SFF_MASK,
			frame.can_dlc);

	ptr = strlen(buf);

	for (i = 0; i < frame.can_dlc; i++)
		sprintf(&buf[ptr + 2*i], "%02X",
			frame.data[i]);

	strcat(buf, "\r"); /* add terminating character */
	printf("%s", buf);
	fflush(stdout);

	return 0;
}


int main(int argc, char **argv)
{
	fd_set rdfs;
	int s; /* can raw socket */ 
	struct sockaddr_can addr;
	struct ifreq ifr;
	int running = 1;

	/* check command line options */
	if (argc != 2) {
		fprintf(stderr, "Usage: %s <can interface>\n", argv[0]);
		return 1;
	}

	/* open socket */
	s = socket(PF_CAN, SOCK_RAW, CAN_RAW);
	if (s < 0) {
		perror("socket");
		return 1;
	}

	addr.can_family = AF_CAN;

	strcpy(ifr.ifr_name, argv[1]);
	if (ioctl(s, SIOCGIFINDEX, &ifr) < 0) {
		perror("SIOCGIFINDEX");
		return 1;
	}
	addr.can_ifindex = ifr.ifr_ifindex;

	if (bind(s, (struct sockaddr *)&addr, sizeof(addr)) < 0) {
		perror("bind");
		return 1;
	}

	while (running) {

		FD_ZERO(&rdfs);
		FD_SET(0, &rdfs);
		FD_SET(s, &rdfs);

		if (select(s+1, &rdfs, NULL, NULL, NULL) < 0) {
			perror("select");
			return 1;
		}

		if (FD_ISSET(0, &rdfs))
			if (pty2can(s)) {
				running = 0;
				continue;
			}

		if (FD_ISSET(s, &rdfs))
			if (can2pty(s)) {
				running = 0;
				continue;
			}
	}

	close(s);

	return 0;
}
