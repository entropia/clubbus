package Entropia::EDEN::Cli::Plugin::Verstaerker;

use v5.12;
use warnings;

use Entropia::EDEN::Cli::Utils qw(prefix_find get_json post_json put_json);

use Term::ANSIColor;
use JSON;

our $name = 'verstaerker';
our $config = {
	api_prefix => 'http://kontrollsucht.intranet.entropia.de/api/verstaerker'
};

sub get {
	my ($suffix) = @_;

	return get_json($config->{api_prefix} . $suffix);
}

sub set {
	my ($suffix, $value, $sync) = @_;

	if($sync) {
		return put_json($config->{api_prefix} . $suffix, $value);
	} else {
		return post_json($config->{api_prefix} . $suffix, $value);
	}
}

sub help {
	print <<"EOF";
usage: $0 verstaerker [-s] CMD

where CMD is one of: 
  input [voellerei|kabel]
  power [on|off]
  volume [0-100]
  tray [open|closed]
  mute [0|1]

use '-s' to force state synchronization
EOF
}

my $regs = {
	power => {
		translate => sub {
			my ($state) = @_;

			if($state eq 'off') {
				return 0;
			} elsif($state eq 'on') {
				return 1;
			} else {
				die "Unknown state $state";
			}

			return $state;
		},
		success => sub {
			my ($state) = @_;

			$state = $state ? "on" : "off";
			say "Amplifier is ". colored($state, 'bold');
		}
	},
	input => {
		translate => sub {
			my ($state) = @_;

			if($state eq 'voellerei') {
				return 'line';
			} elsif($state eq 'kabel') {
				return 'tape2';
			} else {
				die "Unknown state $state";
			}

			return $state;
		},
		success => sub {
			my ($state) = @_;

			if($state eq 'line') {
				$state = "voellerei";
			} elsif($state eq 'tape2') {
				$state = "kabel";
			} else {
				die "Unknown state $state";
			}

			say "Selected input from " . colored($state, 'bold');
		}
	},
	volume => {
		success => sub {
			my ($state) = @_;

			say "Volume is ${state}%";
		}
	},
	tray => {
		translate => sub {
			my ($state) = @_;

			if($state eq 'open') {
				return 1;
			} elsif($state eq 'closed') {
				return 0;
			} else {
				die "Unknown state $state";
			}
		},
		success => sub {
			my ($state) = @_;

			if($state == 0) {
				$state = 'closed';
			} elsif($state == 1) {
				$state = 'open';
			} else {
				die "Unknown state $state";
			}

			say "Tray is " . colored($state, 'bold');
		}
	},
	mute => {},
};

sub run {
	my $sync = 0;
	if(@_ && $_[0] eq '-s') {
		shift;
		$sync = 1;
	}
	
	if(@_ == 0 || $_[0] eq 'help') {
		help;
		exit;
	}

	my $cmd = shift;

	$cmd = prefix_find([keys %$regs], $cmd);

	if(defined $regs->{$cmd}) {
		my $value = shift;

		if(defined $value) {
			if(exists $regs->{$cmd}{translate}) {
				$value = $regs->{$cmd}{translate}->($value);
			}

			my $state = set("/$cmd", $value, $sync);

			say "Success";
		} else {
			my $state = get("/$cmd");

			if(exists $regs->{$cmd}{success}) {
				$regs->{$cmd}{success}->($state);
			} else {
				print "State is " . colored($state, 'bold') . "\n";
			}
		}
	} else {
		say STDERR "unknown command \"$cmd\"";
		exit 1;
	}
}

1;
