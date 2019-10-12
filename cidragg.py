#!/usr/bin/env python3

import fileinput
import netaddr

ipset = netaddr.IPSet()
for line in fileinput.input():
    try: ipset.add(line)
    except TypeError: continue

for cidr in ipset.iter_cidrs(): print (cidr)
