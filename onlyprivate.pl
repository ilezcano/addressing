#!/usr/bin/perl -w
#
use Net::CIDR ':all';
#use XML::Dumper;
use strict;

my @privates = (qw#10.0.0.0/8 192.168.0.0/16 172.16.0.0/12#);
$\ = "\n";

while (<>)
	{
	my $cidr = cidrvalidate($_);
	next unless $cidr;
	print $cidr if (Net::CIDR::cidrlookup($cidr, @privates));
	}
