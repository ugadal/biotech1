a:3:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:4:"file";i:1;a:3:{i:0;s:946:"
#~ declaration des variables globales (q=query, t=target)
q=list("-LEPETITPAPILLANSESTENVAVLEPARLAFENETRE")
#~ q=list("-PAPILLAN")
t=list("-PAVILLAN")
fc=0
h=[]
S={}
S[(0,0)]=0

fn="/usr/local/share/EMBOSS/data/EBLOSUM62"
M={}
f=open(fn)
for i in range(6): f.readline()
AA=f.readline().split()
for loa in AA:
	SL=f.readline().split()
	aael=SL.pop(0)
	for aaec,sc in zip(AA,SL):
		M[(aael,aaec)]=int(sc)
		#~ print loa
		#~ print "sl=",SL[0]
		#~ M[(SL[0],loa)]=lob


def rcs(l,c):
	global S
	global h
	global fc
	#~ incrementation du compteur de passage dans la fonction
	if S.has_key((l,c)):
		return S[(l,c)]
	
	fc+=1
	h.append((l,c))
	#~ traitement des cas simples
	if l==0: sc=rcs(0,c-1)-1
	elif c==0: sc=rcs(l-1,0)-1
	else:
		sc=max(rcs(l,c-1)-1,rcs(l-1,c)-1,rcs(l-1,c-1)+M[(q[c],t[l])])
	S[(l,c)]=sc
	return sc

print rcs(len(t)-1,len(q)-1)
print fc
for l in range(len(t)):
	for c in range(len(q)):
		print str(rcs(l,c)).center(4),
	print
";i:1;s:6:"python";i:2;s:8:"rscalign";}i:2;i:6;}i:2;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:6;}}