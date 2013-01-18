package Entropia::EDEN::Cli;

use v5.12;
use warnings;

use Module::Pluggable require => 1;
use File::HomeDir;
use Config::INI::Reader;

use Entropia::EDEN::Cli::Utils qw(prefix_dispatch);

my $config = {};
my $config_file = File::HomeDir->my_dist_config('EDEN-CLI', {create => 1}) . "/config";
if(-f $config_file) {
	$config = Config::INI::Reader->read_file($config_file);
}

my $plugins;
foreach my $plugin (plugins()) {
	no strict 'refs';
	my $name = ${"${plugin}::name"};

	$plugins->{$name} = \&{"${plugin}::run"};

	if(exists $config->{$name}) {
		foreach my $item (keys %{$config->{$name}}) {
			${"${plugin}::config"}->{$item} = $config->{$name}{$item};
		}
	}
}

sub help {
	print <<"EOF";
usage: $0 command [...]

Available commands:
EOF
	say " $_" foreach keys %$plugins;
}

sub run {
	my $cmd = shift // 'status';

	if($cmd eq 'help' || $cmd eq '--help') {
		help;
		exit;
	}

	prefix_dispatch($plugins, $cmd)->(@_);
}

1;
