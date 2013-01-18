package Entropia::EDEN::Cli::Utils;

use v5.12;
use warnings;

use base qw(Exporter);

use LWP;
use JSON;

our @EXPORT_OK = qw(prefix_dispatch prefix_find post_json get_json put_json);

sub prefix_dispatch {
	my ($hash, $prefix) = @_;
	my @keys = keys %$hash;

	$prefix //= "";
	if($prefix eq "") {
		say STDERR "No command given, available commands are:";
		say STDERR " $_" foreach @keys;

		exit 1;
	}

	my $match = prefix_find(\@keys, $prefix);

	return $hash->{$match};
}

sub prefix_find {
	my ($array, $prefix) = @_;

	if($prefix ~~ @$array) { #exact match
		return $prefix;
	}

	my @candidates = grep /^$prefix/, @$array;

	if(@candidates > 1) {
		say STDERR "Ambiguous prefix match, candidates are:";
		say STDERR " $_" foreach @candidates;

		exit 1;
	} elsif(@candidates == 0) {
		say STDERR "No matches found for prefix $prefix";

		exit 1;
	}

	return $candidates[0];
}

sub transact_json {
	my ($req) = @_;

	my $ua = LWP::UserAgent->new;

	my $res = $ua->request($req);
	die "Request failed: " . $res->status_line unless $res->is_success;

	my $json = decode_json $res->content;
	die "Decoding JSON failed, data was: " . $res->content unless $json;

	die "Transaction failed: " . $json->{msg} unless $json->{success};

	return $json->{msg};
}

sub get_json {
	my ($url) = @_;

	my $req = HTTP::Request->new(GET => $url);

	return transact_json($req);
}

sub post_json {
	my ($url, $data) = @_;

	my $req = HTTP::Request->new(POST => $url);
	$req->content($data);

	return transact_json($req);
}

sub put_json {
	my ($url, $data) = @_;

	my $req = HTTP::Request->new(PUT => $url);
	$req->content($data);

	return transact_json($req);
}
