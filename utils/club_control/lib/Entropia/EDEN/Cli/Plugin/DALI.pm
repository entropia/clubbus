package Entropia::EDEN::Cli::Plugin::DALI;

use v5.12;
use warnings;

use Entropia::EDEN::Cli::Utils qw(prefix_dispatch prefix_find get_json post_json);

our $name = 'dali';
our $config = {
	api => 'http://kontrollsucht.intranet.entropia.de/api/dali'
};

sub get {
        my ($room) = @_;

        return get_json($config->{api} . "/$room");
}

sub set {
        my ($room, $value) = @_;

        return post_json($config->{api} . "/$room", $value);
}


sub help {
	print <<"EOF";
usage: $0 dali hauptraum|kueche|all [0-170]
EOF
}

sub run {
	if(@_ == 0) {
		push @_, 'all';
	}

	if($_[0] eq 'help') {
		help;
		return;
	}

	my $room = prefix_find([qw(all hauptraum kueche)], shift);

	if(@_) {
		my $value = shift;

		$room = 'b' if $room eq 'all';

		say set($room, $value);
	} else {
		my @targets = ($room);

		if($room eq 'all') {
			@targets = qw(hauptraum kueche);
		}

		for my $room (@targets) {
			my $value = get($room);

			printf "%10s: %d\n", $room, $value;
		}
	}
}

1;
