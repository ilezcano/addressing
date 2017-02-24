#!/usr/bin/perl -w
#
use Net::IP;
use strict;

$\ = "\n";
$, = "\t";
while (<>)
	{
	my $cidr = new Net::IP($_);
	print ($cidr->ip(), $cidr->mask());
	}
