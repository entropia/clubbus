package Entropia::EDEN::Cli::Plugin::Backlight;

use v5.12;
use warnings;

use Entropia::EDEN::Cli::Utils qw(prefix_find);

use LWP::Simple;
use Term::ANSIColor;

our $name = 'backlight';
our $config = {
	api => 'http://inferno.intranet.entropia.de:8080'
};

sub get_color {
	my $color = get($config->{api} . "/get_color");

	if(not defined $color || is_error($color)) {
		say STDERR "Request failed";

		exit 1;
	}

	return $color;
}

sub set_color {
	my ($value) = @_;

	my $result  = get($config->{api} . "/set_color?color=" . $value);
	if(not defined $result || is_error($result)) {
		say STDERR "Request failed";
		exit 1;
	}
}

sub help {
	print <<"EOF";
usage: $0 backlight [color]

color is either a color name or #RRGGBB

EOF
}

my %colormap = (
	red => "FF0000",
	green => "00FF00",
	blue => "0000FF",

	white => "FFFFFF",
	on => "FFFFFF",

	black => "000000",
	off => "000000",
);

sub run {
	for my $custom_color (keys %$config) {
		next unless $custom_color =~ /^color_(.*)/;

		$colormap{$1} = $config->{$custom_color};
	}

	if(@_ == 1 && $_[0] eq 'help') {
		help;
		exit;
	}

	if(@_ == 0) {
		my $color = get_color;

		say "Current color is " . colored($color, 'bold');

		exit;
	} 

	my $color = $_[0];
	if($color =~ /^([0-9A-F]{6})/) {
		set_color($1);
		say "done";

		exit;
	}

	$color = lc($color);

	if($color = prefix_find([keys %colormap], $color)) {
		say "Setting color '$color'";
		set_color($colormap{$color});
		say "done";

		exit;
	}

	say STDERR "unknown color $color";
	exit 1;
}

1;
