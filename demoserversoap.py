#!/usr/bin/env python
# -*- coding: utf-8 -*-
from SOAPpy import *
def rc(x):
	print "on m'appelle avec %i"%x
	return x*x
def revert(s):
	L=list(s)
	L.reverse()
	return "".join(L)
server = SOAPServer( ( '0.0.0.0', 9980 ) )
server.registerFunction( rc )
server.registerFunction( revert )
server.serve_forever()
