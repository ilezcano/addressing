#!/usr/bin/perl -w
#
use Net::IPv4Addr qw( :all);
#use XML::Dumper;
use strict;

$\ = "\n";
$, = "/";
while (<>)
	{
	my ($ip,$cidr) = ipv4_network ($_);
	print ($ip,$cidr);
	}
