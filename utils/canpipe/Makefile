OBJS=canpipe.o

all: $(OBJS)
	gcc -o canpipe canpipe.o

clean:
	rm -f $(OBJS) canpipe 

%.o: %.c
	gcc -g -Wall -Werror -c -o $@ $<
