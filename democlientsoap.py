#!/usr/bin/env python
# -*- coding: utf-8 -*-
#
from SOAPpy import *
conn=SOAPProxy("http://10.1.120.50:9980")
print conn.rc(45)
print conn.revert("abcdef")
