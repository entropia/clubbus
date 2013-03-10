#!/usr/bin/env perl

use inc::Module::Install;

use strict;
use warnings;

name	"EDEN-CLI";

abstract	'Entropia Clubfernsteuerung';
author		'Florian Larysch';
license		'BSD';
perl_version	'5.12';
version		'0.001';

requires 'File::HomeDir';
requires 'Config::INI';
requires 'Module::Pluggable';
requires 'JSON';
requires 'LWP';
requires 'Term::ANSIColor';

install_script 'script/club';

WriteAll;
