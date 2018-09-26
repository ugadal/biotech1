a:101:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:8:"Indexeur";i:1;i:3;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:164:"Avant de commencer à réaliser un indexeur, il faut savoir où se trouve les fichiers de la banque. Pour connaitre l'emplacement de vos fichiers, la commande pwd (";}i:2;i:20;}i:5;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:184;}i:6;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:23:"Print Working Directory";}i:2;i:186;}i:7;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:209;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:66:") permet d'afficher le chemin du dossier dans lequel on se trouve.";}i:2;i:211;}i:9;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:277;}i:10;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:277;}i:11;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:80:"Ce code ci-dessous fonctionne avec le format d'entrée de la banque de données ";}i:2;i:279;}i:12;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:359;}i:13;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:7:"GenBank";}i:2;i:361;}i:14;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:368;}i:15;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:2:". ";}i:2;i:370;}i:16;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:378;}i:17;a:3:{i:0;s:4:"file";i:1;a:3:{i:0;s:827:" 

#~ c'est la meme chose que sed et grep mais avec python
 
import sys
import gzip
fn=sys.argv[1]
f=gzip.open(fn)


#~ le probleme est qu'il y a du texte avant le 1er 
#~ locus donc nous devons dire que le premier LOCUS est plus loin que le debut du fichier:
l=''
while not l.startswith("LOCUS"):
	beg=f.tell()
	l=f.readline()
f.seek(beg)
#~ Tant que la ligne ne commence pas par locus, beg 
#~ prendra des valeurs qui correspont au texte avant locus

	
for l in f:
	if l.startswith("LOCUS"):
		id=l.split()[1]
		
	if l.startswith("//"):
		offset=f.tell()
		print id,beg,offset-beg,fn
		beg=offset
#~Si la phrase commence par locus id prendra la valeur 
#~ de la 2eme position du split c a d l'identifiant 
 
#~ si la phrase commence par // alors on demande sa position et
#~ deviendra le nouveau beg pour le LOCUS suivant 


";i:1;s:6:"python";i:2;s:8:"indexeur";}i:2;i:378;}i:18;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:378;}i:19;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:194:"Ce code ne fonctionne que pour un seul fichier. Afin de l'appliquer à plusieurs fichiers dans un même dossier, une simple commande shell permet de répéter l'opération sur tout les fichiers.";}i:2;i:1231;}i:20;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1431;}i:21;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:109:"
for f in /"chemin_des_fichiers"/fichier*.gz; do python2 /"chemin_de_l'indexeur"/indexeur $f >> index ; done
";i:1;s:4:"bash";i:2;N;}i:2;i:1431;}i:22;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1431;}i:23;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:109:"Pour tout les fichiers le programme indexeur est éxecuté et son résultat est écrit dans un fichier index.";}i:2;i:1554;}i:24;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1664;}i:25;a:3:{i:0;s:10:"table_open";i:1;a:3:{i:0;i:4;i:1;i:4;i:2;i:1665;}i:2;i:1664;}i:26;a:3:{i:0;s:13:"tablerow_open";i:1;a:0:{}i:2;i:1664;}i:27;a:3:{i:0;s:16:"tableheader_open";i:1;a:3:{i:0;i:1;i:1;N;i:2;i:1;}i:2;i:1664;}i:28;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:3:"ID ";}i:2;i:1666;}i:29;a:3:{i:0;s:17:"tableheader_close";i:1;a:0:{}i:2;i:1669;}i:30;a:3:{i:0;s:16:"tableheader_open";i:1;a:3:{i:0;i:1;i:1;N;i:2;i:1;}i:2;i:1669;}i:31;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:7:"Offset ";}i:2;i:1670;}i:32;a:3:{i:0;s:17:"tableheader_close";i:1;a:0:{}i:2;i:1677;}i:33;a:3:{i:0;s:16:"tableheader_open";i:1;a:3:{i:0;i:1;i:1;N;i:2;i:1;}i:2;i:1677;}i:34;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:9:"longueur ";}i:2;i:1678;}i:35;a:3:{i:0;s:17:"tableheader_close";i:1;a:0:{}i:2;i:1687;}i:36;a:3:{i:0;s:16:"tableheader_open";i:1;a:3:{i:0;i:1;i:1;N;i:2;i:1;}i:2;i:1687;}i:37;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:7:"fichier";}i:2;i:1688;}i:38;a:3:{i:0;s:17:"tableheader_close";i:1;a:0:{}i:2;i:1695;}i:39;a:3:{i:0;s:14:"tablerow_close";i:1;a:0:{}i:2;i:1696;}i:40;a:3:{i:0;s:13:"tablerow_open";i:1;a:0:{}i:2;i:1696;}i:41;a:3:{i:0;s:16:"tableheader_open";i:1;a:3:{i:0;i:1;i:1;N;i:2;i:1;}i:2;i:1696;}i:42;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:9:"AB000100 ";}i:2;i:1698;}i:43;a:3:{i:0;s:17:"tableheader_close";i:1;a:0:{}i:2;i:1707;}i:44;a:3:{i:0;s:16:"tableheader_open";i:1;a:3:{i:0;i:1;i:1;N;i:2;i:1;}i:2;i:1707;}i:45;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:4:"263 ";}i:2;i:1708;}i:46;a:3:{i:0;s:17:"tableheader_close";i:1;a:0:{}i:2;i:1712;}i:47;a:3:{i:0;s:16:"tableheader_open";i:1;a:3:{i:0;i:1;i:1;N;i:2;i:1;}i:2;i:1712;}i:48;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:5:"7465 ";}i:2;i:1713;}i:49;a:3:{i:0;s:17:"tableheader_close";i:1;a:0:{}i:2;i:1718;}i:50;a:3:{i:0;s:16:"tableheader_open";i:1;a:3:{i:0;i:1;i:1;N;i:2;i:1;}i:2;i:1718;}i:51;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:29:"/data/dbs/gbrel/gbbct1.seq.gz";}i:2;i:1719;}i:52;a:3:{i:0;s:17:"tableheader_close";i:1;a:0:{}i:2;i:1748;}i:53;a:3:{i:0;s:14:"tablerow_close";i:1;a:0:{}i:2;i:1749;}i:54;a:3:{i:0;s:13:"tablerow_open";i:1;a:0:{}i:2;i:1749;}i:55;a:3:{i:0;s:16:"tableheader_open";i:1;a:3:{i:0;i:1;i:1;N;i:2;i:1;}i:2;i:1749;}i:56;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:9:"AB000106 ";}i:2;i:1751;}i:57;a:3:{i:0;s:17:"tableheader_close";i:1;a:0:{}i:2;i:1760;}i:58;a:3:{i:0;s:16:"tableheader_open";i:1;a:3:{i:0;i:1;i:1;N;i:2;i:1;}i:2;i:1760;}i:59;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:5:"7728 ";}i:2;i:1761;}i:60;a:3:{i:0;s:17:"tableheader_close";i:1;a:0:{}i:2;i:1766;}i:61;a:3:{i:0;s:16:"tableheader_open";i:1;a:3:{i:0;i:1;i:1;N;i:2;i:1;}i:2;i:1766;}i:62;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:5:"2913 ";}i:2;i:1767;}i:63;a:3:{i:0;s:17:"tableheader_close";i:1;a:0:{}i:2;i:1772;}i:64;a:3:{i:0;s:16:"tableheader_open";i:1;a:3:{i:0;i:1;i:1;N;i:2;i:1;}i:2;i:1772;}i:65;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:29:"/data/dbs/gbrel/gbbct1.seq.gz";}i:2;i:1773;}i:66;a:3:{i:0;s:17:"tableheader_close";i:1;a:0:{}i:2;i:1802;}i:67;a:3:{i:0;s:14:"tablerow_close";i:1;a:0:{}i:2;i:1803;}i:68;a:3:{i:0;s:13:"tablerow_open";i:1;a:0:{}i:2;i:1803;}i:69;a:3:{i:0;s:16:"tableheader_open";i:1;a:3:{i:0;i:1;i:1;N;i:2;i:1;}i:2;i:1803;}i:70;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:9:"AB000111 ";}i:2;i:1805;}i:71;a:3:{i:0;s:17:"tableheader_close";i:1;a:0:{}i:2;i:1814;}i:72;a:3:{i:0;s:16:"tableheader_open";i:1;a:3:{i:0;i:1;i:1;N;i:2;i:1;}i:2;i:1814;}i:73;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:6:"10641 ";}i:2;i:1815;}i:74;a:3:{i:0;s:17:"tableheader_close";i:1;a:0:{}i:2;i:1821;}i:75;a:3:{i:0;s:16:"tableheader_open";i:1;a:3:{i:0;i:1;i:1;N;i:2;i:1;}i:2;i:1821;}i:76;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:6:"35603 ";}i:2;i:1822;}i:77;a:3:{i:0;s:17:"tableheader_close";i:1;a:0:{}i:2;i:1828;}i:78;a:3:{i:0;s:16:"tableheader_open";i:1;a:3:{i:0;i:1;i:1;N;i:2;i:1;}i:2;i:1828;}i:79;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:29:"/data/dbs/gbrel/gbbct1.seq.gz";}i:2;i:1829;}i:80;a:3:{i:0;s:17:"tableheader_close";i:1;a:0:{}i:2;i:1858;}i:81;a:3:{i:0;s:14:"tablerow_close";i:1;a:0:{}i:2;i:1859;}i:82;a:3:{i:0;s:11:"table_close";i:1;a:1:{i:0;i:1859;}i:2;i:1859;}i:83;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1859;}i:84;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:487:"Toutes ces informations sont utilisés par un autre programme qui permet de chercher une séquence par son code d'accés et d'afficher son entrée dans la banque.
Le premier argument correspond au code d'accés de la séquence recherché, le second argument correspond à l'écart entre le début du fichier et le début de l'entrée, le troisième argument correspond le nombre de caractères à lire par le programme et le dernier correspond au fichier dans lequel se trouve l'entrée.";}i:2;i:1862;}i:85;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2349;}i:86;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2349;}i:87;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:180:"Il existe d'autres manières de faire des index. Par exemple, certaines commandes du bash sed et grep utilisant des expressions régulières permettent d'obtenir le même résulat.";}i:2;i:2351;}i:88;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2531;}i:89;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2531;}i:90;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:238:"L'avantage d'un programme en python, c'est que celui peut se placer à une position de caractère précise et de lire un nombre de caractères voulu. Contrairement au sed qui lui doit lire tout le fichier avant de retourner un résultat. ";}i:2;i:2533;}i:91;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2771;}i:92;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2773;}i:93;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:38:"Programme de recherche d'une séquence";i:1;i:4;i:2;i:2773;}i:2;i:2773;}i:94;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:4;}i:2;i:2773;}i:95;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2773;}i:96;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:58:"Voici un programme qui récupère les arguments ci-dessus.";}i:2;i:2821;}i:97;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2885;}i:98;a:3:{i:0;s:4:"file";i:1;a:3:{i:0;s:384:"
#!/usr/bin/python2
#~ la ligne de dessus sert le rendre executable par le shell

import sys 
import gzip
fn=sys.argv[1]

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

";i:1;s:6:"python";i:2;s:24:"rechercheur de sequence ";}i:2;i:2885;}i:99;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:3309;}i:100;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:3309;}}