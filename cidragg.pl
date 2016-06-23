#!/usr/bin/perl -w
#
use Net::CIDR ':all';
#use XML::Dumper;
use strict;

my @smartcidr;
$\ = $, = "\n";

while (<>)
	{
	my $cidr = cidrvalidate($_);
	next unless $cidr;
	print $cidr;
	@smartcidr = Net::CIDR::cidradd($cidr, @smartcidr);
	}

print "=" x 50;

print @smartcidr;
