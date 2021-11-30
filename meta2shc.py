#!/usr/bin/env python
# -*- coding: utf-8 -*-
import sys
try:
	gff=sys.argv[1]
	outdir=sys.argv[2]
except:
	print("needs two arguments: 'gfffile' and 'outdir'")
	exit()
import csv
fn="SraRunTable.txt"
f=open(fn)
shc=open("shc","w")
f.readline()
r=csv.reader(f)
AL=[l for l in r]
runs=[l[0] for l in AL]
runs=[r+".s.bam" for r in runs]
geno=[l[18] for l in AL]
D={}
for g in set(geno):D[g]=[]
for r,g in zip(runs,geno):D[g].append(r)
SN={}#Short Names
for k in D:
	v=k
	v=v.replace('\\,'," ")
	v=v.replace(' knockout',"")
	v=v.replace('  ',"_")
	SN[v]=k
SNL=list(SN.keys())
SNL.sort()
c=0
for k in SNL:
	print(" :\t	".join([str(c),k,SN.get(k)]))
	c+=1
which=input("space separated list of items to keep (return for all) : ")
if which=="":keep=SNL
else:keep=[SNL[int(x)] for x in which.split()]
print (keep)

labels="','".join(keep)
# ~ print (labels)
labels="'"+labels+"'"
shc.write("cuffdiff %s -L %s \\\n"%(gff,labels))

for k in keep:
	g=SN[k]
	shc.write(",".join(D[g])+" \\\n")
shc.write('-o %s -p $(nproc) \n'%outdir)
