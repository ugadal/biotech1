a:23:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:50:"Cutout ou la forme finale de la recherche d'enzyme";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:173:"Après la création des programmes cutter, noncutter, on peut encore faciliter la recherche des enzymes en combinant les deux programmes afin d'afficher les enzymes coupant.";}i:2;i:67;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:240;}i:6;a:3:{i:0;s:4:"file";i:1;a:3:{i:0;s:124:"
#!/bin/bash
seq=$1
beg=$2
end=$3
enz=$4
tf="/tmp/"$(uuidgen)
noncutter $seq $beg $end $enz >$tf
cutter $seq - - $tf
rm $tf
";i:1;s:4:"bash";i:2;s:6:"Cutout";}i:2;i:247;}i:7;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:247;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:12:"La commande ";}i:2;i:392;}i:9;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:404;}i:10;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:7:"uuidgen";}i:2;i:406;}i:11;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:413;}i:12;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:227:" permet de génerer un identifiant unique universel (universally unique identifier ou UUID), cet identifiant permet d'assurer que chaque utilisation du programme génera un fichier temporaire lié à un utilisateur particulier.";}i:2;i:415;}i:13;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:642;}i:14;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:642;}i:15;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:61:"Dans l'ordre, le programme créé un fichier temporaire dans ";}i:2;i:644;}i:16;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:705;}i:17;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:4:"/tmp";}i:2;i:706;}i:18;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:710;}i:19;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:188:" et execute les commandes noncutter et cutter qui écrivent leurs résultats dans le fichier temporaraire(tf). Après écriture et affichage des enzymes, on supprime le fichier temporaire.";}i:2;i:711;}i:20;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:899;}i:21;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:899;}i:22;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:899;}}