#!/usr/bin/perl -w
#
use Net::CIDR ':all';
#use XML::Dumper;
use strict;

my @smartcidr;
$\ = $, = "\n";

print '=' x 25 . 'BEFORE' . '=' x 25;
while (<>)
	{
	my $cidr = cidrvalidate($_);
	next unless $cidr;
	print $cidr;
	@smartcidr = Net::CIDR::cidradd($cidr, @smartcidr);
	}

print '=' x 25 . 'AFTER' . '=' x 25;

print @smartcidr;
