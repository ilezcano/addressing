#!/usr/bin/perl -w
#
use Net::CIDR ':all';
#use XML::Dumper;
use strict;

my @smartcidr;
$\ = $, = "\n";

while (<>)
	{
	my @doop = split(/\s+/,$_);
	my $cidr = addrandmask2cidr(@doop);
	next unless $cidr;
	print $cidr;
	@smartcidr = cidradd($cidr, @smartcidr);
	}

print "=" x 50;

print @smartcidr;
