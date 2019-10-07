#!/usr/bin/env python3

import argparse
import sys
import netaddr

arguments = argparse.ArgumentParser()
arguments.add_argument('-p' )
arguments.add_argument('infile', nargs='?', type=argparse.FileType('r'), default=sys.stdin)
prefix = arguments.parse_known_args()[0].p
infile = arguments.parse_known_args()[0].infile

ipset = netaddr.IPSet()
for line in infile.readlines():
    try: ipset.add(line)
    except TypeError: continue

if prefix in ipset:
    print('Yes!')
else:
    print('No!')
