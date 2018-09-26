a:6:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:0;}i:2;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:126:"Ce programme est utilisable par les programmes d'Emboss due à la syntaxe particulère demandée par les programme.(voir code)";}i:2;i:1;}i:3;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:133;}i:4;a:3:{i:0;s:4:"file";i:1;a:3:{i:0;s:604:"
#!/usr/bin/python2
#~ la ligne de dessus sert le rendre executable par le shell

import sys 
import gzip
fn=sys.argv[1]
#~ l'argument arrive sous la forme de "banque:code d'acces" et 
#~ donc pas exploitable par getgene python
#~ La ligne ci dessous permet de splitter par les ":" et 
#~ de récuperer le code d'acces
fn=fn.split(":")[1]

index="/data/indexes/indexpython.gz"

f=gzip.open(index)
l=''
while not l.startswith(fn):
	l=f.readline()

l=l.split()
offset=int(l[1])
nbroct=int(l[2])
ch=l[3]

f=gzip.open(ch)
p=f.seek(offset)
r=f.read(nbroct)
print r.strip() 
#~ retire le retour a la ligne 



";i:1;s:6:"python";i:2;N;}i:2;i:133;}i:5;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:133;}}