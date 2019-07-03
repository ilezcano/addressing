#!/usr/bin/perl -w
#
use Net::CIDR ':all';
use XML::Dumper;
use Getopt::Std;
use strict;

my %options;
getopts("p: ", \%options);
$\ = "\n";

my @slurp;
while (<>)
	{
	push (@slurp, $_)
	}

	
	if (Net::CIDR::cidrlookup($options{p}, @slurp)){print "Yes!"} else {print "No!"};
