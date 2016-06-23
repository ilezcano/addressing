#!/usr/bin/perl -w
#
use Net::CIDR ':all';
use strict;

$\ = "\n";
while (<>)
	{
	my @doop = split(/\s+/,$_);
	print addrandmask2cidr(@doop);
	}
