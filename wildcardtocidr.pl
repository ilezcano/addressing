#!/usr/bin/perl -w
#
use Net::Netmask;
use strict;

while (<>)
	{
	if (/#/) { print Net::Netmask->new($_) . "\n" }
	else { print }
	}
