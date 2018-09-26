a:131:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:0;}i:2;a:3:{i:0;s:14:"underline_open";i:1;a:0:{}i:2;i:1;}i:3;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:3;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:34:"Exécuter en une ligne de commande";}i:2;i:5;}i:5;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:39;}i:6;a:3:{i:0;s:15:"underline_close";i:1;a:0:{}i:2;i:41;}i:7;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:43;}i:8;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:43;}i:9;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:35:"Donc nous avons vu que la commande ";}i:2;i:45;}i:10;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:80;}i:11;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:5:"remap";}i:2;i:82;}i:12;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:87;}i:13;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:166:", commande qui donne des informations sur les enzymes qui coupent dans la séquende ou non,acceptait certaines options :
-enzymes
-sitelen
-outfile
-sbeg
-send
-etc..";}i:2;i:89;}i:14;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:255;}i:15;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:255;}i:16;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:56:"Il y en a d'autres mais celles-ci nous aiderons le plus.";}i:2;i:257;}i:17;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:313;}i:18;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:313;}i:19;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:315;}i:20;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:12:"L'objectif :";}i:2;i:317;}i:21;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:329;}i:22;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:140:"
Il est de connaitre les enzymes qui ne coupent pas dans une région voulu d'une séquence.
Donc la ligne de commande ressemblerai à cela :";}i:2;i:331;}i:23;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:471;}i:24;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:157:" 
remap la_sequence 
-enzymes all ou -enzymes @fichier 
-sbeg nombre  début de séquence optionnel
-send nombre  fin de séquence optionnel
-outfile stdout ";i:1;N;i:2;N;}i:2;i:478;}i:25;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:478;}i:26;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:178:"La suite est d'établir un programme qui reçoit des arguments à la ligne de commande pour chaque option, de ce fait les options ne seront plus à taper à la ligne de commande.";}i:2;i:645;}i:27;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:823;}i:28;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:823;}i:29;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:50:"Le premier essai fut de récuperer les arguments :";}i:2;i:825;}i:30;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:881;}i:31;a:3:{i:0;s:4:"file";i:1;a:3:{i:0;s:282:"
seq=$1
beg=$2
end=$3
enz=$4
if [ $beg == - ]
then
	beg=""
else 
	beg="-sbeg $beg"
fi


if [ $end == - ]
then
	end=""
else 
	end="-send $end"
fi
remap $seq $beg $end -sitelen 6 -enzymes $enz -outfile tmp1 #~ On écrit dans un fichier temporaire pour pouvoir le modifier par après.
";i:1;s:4:"bash";i:2;N;}i:2;i:881;}i:32;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:881;}i:33;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:205:"Après cela, nous obtenons le fichier avec les informations voulues, mais avec des informations superflues.
Ce que nous voulions était juste les enzymes qui ne coupent pas la séquence, donc le programme ";}i:2;i:1178;}i:34;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:1383;}i:35;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:3:"sed";}i:2;i:1385;}i:36;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:1388;}i:37;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:16:" était requis. ";}i:2;i:1390;}i:38;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1406;}i:39;a:3:{i:0;s:4:"file";i:1;a:3:{i:0;s:350:"
sed -i -e "0,/# Enzymes that do not cut/ d" tmp1
		#~ Retire tout ce qu'il y a avant la phrase, elle comprise 
sed -i -e "/# No. of cutting enzymes which do not match the/,$ d" tmp1
		#~ Retire tout ce qu'il a après cette phrase, elle comprise, jusqu'à la fin 
sed -i -e "s/\s\+/,/g" tmp1
                #~ substitue les espaces par des virgules
";i:1;s:4:"bash";i:2;N;}i:2;i:1413;}i:40;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1413;}i:41;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:64:"Avec ces 2 script nous obtenons une liste d'enzymes comme ceci :";}i:2;i:1778;}i:42;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1848;}i:43;a:3:{i:0;s:4:"file";i:1;a:3:{i:0;s:676:"
AatII,AbsI,AclI,AcyI,AflII,AloI,ApaI,ApaLI,
AscI,BaeI,BarI,BbvCI,BglI,BmtI,BplI,Bpu10I,
BsaAI,BsaXI,BsePI,BseRI,BseSI,BseYI,BsgI,BsiI*,
Bsp120I,BspHI,BspLU11I*,BspMII*,BspOI,BstAPI,BtrI,Cfr9I,
ClaI,DinI,DraIII,DrdI,Eam1105I,EciI,Ecl136II,Eco31I,
Eco47III,Eco53kI,EcoICRI,EcoRI,EcoRV,EgeI,EheI,Esp3I,
EspI*,FalI,FseI,GsaI,HaeII,HgiAI*,HindIII,I-CeuI,
I-PpoI,I-SceI,KasI,KroI,MauBI,McrI*,MluI,MroNI,
NaeI,NarI,NcoI,NgoMIV,NheI,NmeAIII,NotI,NruI,
PacI,PasI,PflMI,PfoI,PI-PspI,PI-SceI,PluTI,PmaCI,
PmeI,PspOMI,PsrI,PvuI,SacI,SacII,SalI,SanDI*,
SauI*,ScaI,SexAI,SfiI,SfoI,SgfI,SgrAI,SgrDI,
SmaI,SnaBI,SpeI,SplI*,SrfI,Sse232I*,Sse8387I,SspDI,
SwaI,TspMI,Tth111I,XmaI,XmaIII*,ZraI,
";i:1;N;i:2;N;}i:2;i:1848;}i:44;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1848;}i:45;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:161:"Par soucis de lisibilité et d'esthétique nous voulons retirer la virgule de fin, retirer les lignes vides et remplacer les virgules par des retour à la ligne ";}i:2;i:2534;}i:46;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2695;}i:47;a:3:{i:0;s:4:"file";i:1;a:3:{i:0;s:82:"
sed -i -e "s/\s\+/,/g"
sed -i -e "s/,$//"
sed -i -e "/^$/d"
sed -i -e "s/,/\n/g"
";i:1;N;i:2;N;}i:2;i:2702;}i:48;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2702;}i:49;a:3:{i:0;s:14:"underline_open";i:1;a:0:{}i:2;i:2794;}i:50;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:2796;}i:51;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:12:"Le problème";}i:2;i:2798;}i:52;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:2810;}i:53;a:3:{i:0;s:15:"underline_close";i:1;a:0:{}i:2;i:2812;}i:54;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:237:"
Nous ne voulons pas qu'un fichier temporaire soit créé car si 2 utilisateurs le lance en même temps il y aura des problèmes.
L'idée pour contourner cela est de faire un programme exécutable par le shell en lui disant que c'est du ";}i:2;i:2814;}i:55;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:3051;}i:56;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:3:"sed";}i:2;i:3053;}i:57;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:3056;}i:58;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:73:".
Voici le code du sed pour le programme des enzymes qui ne coupent pas :";}i:2;i:3058;}i:59;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3137;}i:60;a:3:{i:0;s:4:"file";i:1;a:3:{i:0;s:135:"

#!/bin/sed -f
0,/# Enzymes that do not cut/ d
/# No. of cutting enzymes which do not match the/,$ d
s/\s\+/,/g
s/,$//
/^$/d
s/,/\n/g
";i:1;s:3:"sed";i:2;N;}i:2;i:3137;}i:61;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3137;}i:62;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:64:"Voici le code du sed pour le programme des enzymes qui coupent :";}i:2;i:3286;}i:63;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3356;}i:64;a:3:{i:0;s:4:"file";i:1;a:3:{i:0;s:170:"
#!/bin/sed -f
0,/# Enzymes that cut\s\+Frequency\s\+Isoschizomers/ d
/# Enzymes which cut less frequently than the MINCUTS criterion/,$ d
s/\s\+\(\S\+\)\s\+.*/\1/
/^$/d
";i:1;s:3:"sed";i:2;N;}i:2;i:3356;}i:65;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3356;}i:66;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:38:"A ce stade le code ressemble à ceci :";}i:2;i:3540;}i:67;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3584;}i:68;a:3:{i:0;s:4:"file";i:1;a:3:{i:0;s:229:"
seq=$1
beg=$2
end=$3
enz=@$4

if [ $beg == - ]
then
	beg=""
else 
	beg="-sbeg $beg"
fi


if [ $end == - ]
then
	end=""
else 
	end="-send $end"
fi
remap $seq $beg $end -sitelen 6 -enzymes $enz -outfile stdout | ./sedc ou ./sednc
";i:1;s:4:"bash";i:2;N;}i:2;i:3584;}i:69;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3584;}i:70;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:3828;}i:71;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:3:"Rm:";}i:2;i:3830;}i:72;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:3833;}i:73;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:17:" pour rendre les ";}i:2;i:3835;}i:74;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:3852;}i:75;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:3:"sed";}i:2;i:3853;}i:76;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:3856;}i:77;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:48:" ou le (no)cutters éxecutable il faut faire un ";}i:2;i:3857;}i:78;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:3905;}i:79;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:9:"chmod 755";}i:2;i:3907;}i:80;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:3916;}i:81;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:69:", et seulement quand tout fonctionne bien on peut les déplacer dans ";}i:2;i:3918;}i:82;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:3987;}i:83;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:14:"/usr/local/bin";}i:2;i:3989;}i:84;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:4003;}i:85;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:".";}i:2;i:4005;}i:86;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4006;}i:87;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4006;}i:88;a:3:{i:0;s:14:"underline_open";i:1;a:0:{}i:2;i:4008;}i:89;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:4010;}i:90;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:3:"Le ";}i:2;i:4012;}i:91;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:4015;}i:92;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:2:"$0";}i:2;i:4017;}i:93;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:4019;}i:94;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:13:" et les liens";}i:2;i:4021;}i:95;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:4034;}i:96;a:3:{i:0;s:15:"underline_close";i:1;a:0:{}i:2;i:4036;}i:97;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:35:"
Essayons le code test ci-dessous :";}i:2;i:4038;}i:98;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4079;}i:99;a:3:{i:0;s:4:"file";i:1;a:3:{i:0;s:73:"
if [ $1 == false ]
then
	echo $0
elif [ $1 != false ]
then
	echo @$1
fi
";i:1;s:4:"bash";i:2;s:7:"test.sh";}i:2;i:4079;}i:100;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4079;}i:101;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:25:"Si l'argument est le mot ";}i:2;i:4174;}i:102;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:4199;}i:103;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:5:"false";}i:2;i:4200;}i:104;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:4205;}i:105;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:113:" alors il va retourner le nom du programme lancé.
Cet commande sera très utile avec les propriétés des liens.";}i:2;i:4206;}i:106;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4319;}i:107;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4319;}i:108;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:53:"Lorsque l'on créé un lien d'un programme, exemple :";}i:2;i:4321;}i:109;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4380;}i:110;a:3:{i:0;s:4:"file";i:1;a:3:{i:0;s:24:"
ln -s tester.sh cutter
";i:1;N;i:2;N;}i:2;i:4380;}i:111;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4380;}i:112;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:109:"Cela crée un lien. Cela veut dire que si on demande le programme cutter il va nous envoyer sur le tester.sh ";}i:2;i:4413;}i:113;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:4522;}i:114;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:4:"mais";}i:2;i:4524;}i:115;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:4528;}i:116;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:4:" le ";}i:2;i:4530;}i:117;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:4534;}i:118;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:2:"$0";}i:2;i:4536;}i:119;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:4538;}i:120;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:50:" ne sera pas le même si on lance l'un ou l'autre.";}i:2;i:4540;}i:121;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4590;}i:122;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4590;}i:123;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:114:"Donc au lieu de créer 2 programmes, un cutters et un no cutters, nous faisons un lien de cutters vers nocutters :";}i:2;i:4592;}i:124;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4712;}i:125;a:3:{i:0;s:4:"file";i:1;a:3:{i:0;s:25:"
ln -s nocutters cutters
";i:1;s:4:"bash";i:2;N;}i:2;i:4712;}i:126;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4712;}i:127;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:120:"Et pour que le programme puisse savoir par quel nom nous l'avons appelé il suffit de mettre dans le code en plus ceci :";}i:2;i:4752;}i:128;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4878;}i:129;a:3:{i:0;s:4:"file";i:1;a:3:{i:0;s:494:"
#!/bin/bash
seq=$1
beg=$2
end=$3
enz=$4

#conditions a ajouter pour verifier le nom de programme
if [ $0 == /usr/local/bin/nocutters ]
then
	filtre=/usr/local/bin/sednc
fi

if [ $0 == /usr/local/bin/cutters ]
then
	filtre=/usr/local/bin/sedc
fi

if [ $enz == all ]
then
	  enz="all"
else 
	enz="@$enz"
fi

if [ $beg == - ]
then
	beg=""
else 
	beg="-sbeg $beg"
fi


if [ $end == - ]
then
	end=""
else 
	end="-send $end"
fi
remap $1 $beg $end -sitelen 6 -enzymes $enz -outfile stdout | $filtre

";i:1;s:4:"bash";i:2;N;}i:2;i:4878;}i:130;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:4878;}}