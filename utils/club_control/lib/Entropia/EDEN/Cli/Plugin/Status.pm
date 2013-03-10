package Entropia::EDEN::Cli::Plugin::Status;

use v5.12;
use warnings;

use Term::ANSIColor;
use REST::Client;
use JSON;

our $name = 'status';
our $config = {
	clubstatus => 'http://club.entropia.de'
};

my $client = REST::Client->new;

sub get {
	my ($url) = @_;

	my $result = $client->GET($url);
	die "REST transfer failed" unless $result->responseCode() == 200;

	my $json = decode_json($result->responseContent());
	die "JSON decode failed" unless defined $json;

	return $json;
}

sub run {
	my $status = get($config->{clubstatus});

	print "Club: ";
	if($status->{club_offen}) {
		say colored("offen", "green");
	} else {
		say colored("zu", "red");
	}
}

1;
