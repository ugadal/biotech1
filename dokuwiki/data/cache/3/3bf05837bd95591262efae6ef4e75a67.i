a:6:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:0;}i:2;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:36:"Voici le programme merger en python.";}i:2;i:1;}i:3;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:37;}i:4;a:3:{i:0;s:4:"file";i:1;a:3:{i:0;s:1433:"
import sys
import os
import itertools as it
#~ declaration des variables contenant les fonctions shell
clf="merger %s %s stdout mf 2> /dev/null | grep Score"
clr="merger %s %s stdout mf 2> /dev/null | grep Score"
contig=0

def found():
	#~ fonction qui ecrit le contig forme
	global contig
	contig+=1
	os.popen("mv mf contig%i"%contig)
	return "contig%i"%contig 

def comparaison(i,j):
	#~ fonction qui effectue les mergers dans les deux sens
	s=float(os.popen(clf%(i,j)).readline().split()[2])
	if s>100:
		return found()
	else:
		s=float(os.popen(clr%(i,j)).readline().split()[2])
		if s>100:
			return found()
		return False
#~ partie 1) recuperer la liste de sequences.
fn=sys.argv[1]
cli="infoseq %s -only -usa -noheading"
f=os.popen(cli%fn)
LS=[l.strip() for l in f.readlines()]
print LS
n=len(LS)
i=0
#~ partie 1) les sequences sont recuperes dans ls, variable python qui contient une liste

#~ partie 2) comparaison logique
#~ rappel: le nombre de comparaison voulu est de 
#~ (n*(n+1))/2 ou n est la longueur la liste

for a in range(n-1):
	for b in range(a+1,n):
		#~ print LS[a],LS[b],
		i+=1
print i
i=0

#~ autre methode: en utilisant les fonctions preconstruite de itertools 
changed=1
while changed:
	print len(LS)
	changed=0
	for a,b in it.combinations(LS, 2):
		#~ print a,b
		
		mf=comparaison(a,b)
		if mf:
			LS.remove(a)
			LS.remove(b)
			LS.insert(0, mf)
			changed=1
			print a,b
			break
			
		i+=1
print i
";i:1;s:6:"python";i:2;s:8:"pymerger";}i:2;i:44;}i:5;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:44;}}