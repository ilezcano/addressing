#!/usr/bin/env python3

import netaddr
import argparse
import sys

arguments = argparse.ArgumentParser()
arguments.add_argument('p', type=str)
arguments.add_argument('infile', nargs='?', type=argparse.FileType('r'), default=sys.stdin)
prefixarg = arguments.parse_known_args()[0].p
infile = arguments.parse_known_args()[0].infile

prefix = netaddr.IPNetwork(prefixarg)

cidrlist = list()
for line in infile.readlines():
    try: cidr = netaddr.IPNetwork(line)
    except netaddr.core.AddrFormatError: continue
    cidrlist += netaddr.cidr_exclude(cidr, prefix)
        
for a in cidrlist:
    print(a)
