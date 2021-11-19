#!/usr/bin/env python
# -*- coding: utf-8 -*-
import matplotlib.pyplot as plt
import random as rnd
from time import sleep
rnd.seed(.125)
plt.ion()
fig = plt.figure()
ax = fig.add_subplot(111)
plt.ylim(-.51, .51)
plt.xlim(-.51, .51)
P=[]
def ref():
	fig.canvas.draw()
	fig.canvas.flush_events()
for k in range(300):
	x=rnd.random()-.5
	y=rnd.random()-.5
	p,=ax.plot(x,y,"k.")
	P.append(p)
ref()
while True:
	p=rnd.choice(P)
	p.set_ydata(rnd.random()-.5)
	p.set_xdata(rnd.random()-.5)
	ref()
	sleep(.21)
