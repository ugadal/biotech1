a:112:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:0;}i:2;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:29:":wiki:img_20140327_095643.jpg";i:1;s:0:"";i:2;s:6:"center";i:3;s:3:"500";i:4;N;i:5;s:5:"cache";i:6;s:7:"details";}i:2;i:1;}i:3;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:41;}i:4;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:41;}i:5;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:58:"Soit une séquence référence au format Fasta : ref.fasta";}i:2;i:43;}i:6;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:101;}i:7;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:101;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:93:"Cas simple la référence est petite, moins de 32000 bases.
Voir aussi le cas compliqué où ";}i:2;i:103;}i:9;a:3:{i:0;s:12:"internallink";i:1;a:2:{i:0;s:14:"cas compliqué";i:1;s:61:"la référence contient au moins une séquence de plus de 32K";}i:2;i:196;}i:10;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:276;}i:11;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:276;}i:12;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:49:"Soit un ou plusieurs fichiers de reads au format ";}i:2;i:278;}i:13;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:327;}i:14;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:5:"fastQ";}i:2;i:329;}i:15;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:334;}i:16;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:26:" : 
 p.ex. SRR022822.fastq";}i:2;i:336;}i:17;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:362;}i:18;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:362;}i:19;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:77:"1) La première étape est de construire l'index BWT de la référence fasta:";}i:2;i:364;}i:20;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:441;}i:21;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:29:" bowtie-build ref.fasta rbwt
";i:1;N;i:2;N;}i:2;i:448;}i:22;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:448;}i:23;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:20:"Ici rbwt servira de ";}i:2;i:487;}i:24;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:507;}i:25;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:24:"nom pratique à utiliser";}i:2;i:508;}i:26;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:532;}i:27;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:38:" c'est le surnom de notre référence.";}i:2;i:533;}i:28;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:571;}i:29;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:571;}i:30;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:30:"Cela créera 6 fichiers *.ebwt";}i:2;i:573;}i:31;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:609;}i:32;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:345:"
-rw-r--r-- 1 root root 4194945 Mar 27 08:31 rbwt.1.ebwt
-rw-r--r-- 1 root root     156 Mar 27 08:31 rbwt.2.ebwt
-rw-r--r-- 1 root root      17 Mar 27 08:31 rbwt.3.ebwt
-rw-r--r-- 1 root root     298 Mar 27 08:31 rbwt.4.ebwt
-rw-r--r-- 1 root root 4194945 Mar 27 08:31 rbwt.rev.1.ebwt
-rw-r--r-- 1 root root     156 Mar 27 08:31 rbwt.rev.2.ebwt
";i:1;N;i:2;N;}i:2;i:609;}i:33;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:609;}i:34;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:181:"2) La seconde étape consiste à ne garder parmi les reads que ceux qui ont
qqchose en commun avec la référence précédemment indexée, en utilisant l'index ebwt juste construit.";}i:2;i:965;}i:35;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1146;}i:36;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1146;}i:37;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:42:"Soit pour le fichier fastq SRR022822.fastq";}i:2;i:1148;}i:38;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1190;}i:39;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:157:"
Syntaxe générale:
bowtie ref fastqfile --al fich_seq_conservées --un fich_seq_exclues logfile

ex:
bowtie rbwt SRR022822.fastq --al keep --un unkeep log
";i:1;N;i:2;N;}i:2;i:1197;}i:40;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1197;}i:41;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"--";}i:2;i:1364;}i:42;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:10:"al keep   ";}i:2;i:1366;}i:43;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"<=";}i:2;i:1376;}i:44;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:81:" cela créera un fichier fastq appelé keep contenant uniquement
les séquences (";}i:2;i:1378;}i:45;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"--";}i:2;i:1459;}i:46;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:10:"ALignées)";}i:2;i:1461;}i:47;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1471;}i:48;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1471;}i:49;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"--";}i:2;i:1473;}i:50;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:10:"un unkeep ";}i:2;i:1475;}i:51;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"<=";}i:2;i:1485;}i:52;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:90:" créera un fichier fastq appelé unkeep des séquences non alignables à la référence (";}i:2;i:1487;}i:53;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"--";}i:2;i:1577;}i:54;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:10:"UNaligned)";}i:2;i:1579;}i:55;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1589;}i:56;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1589;}i:57;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:180:"plus utilement, si on est intéressé uniquement par les séquences utiles, 
et que l'on ne veut pas des séquences exclues il est utile de diriger les 
séquences exclues vers le ";}i:2;i:1591;}i:58;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:1771;}i:59;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:4:"vide";}i:2;i:1772;}i:60;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:1776;}i:61;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:51:" (tout comme les logs) dans un souçi de
rapidité:";}i:2;i:1777;}i:62;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1834;}i:63;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:242:"
bowtie rbwt SRR022822.fastq --al keep --un /dev/null /dev/null
# reads processed: 2736791
# reads with at least one reported alignment: 854 (0.03%)
# reads that failed to align: 2735937 (99.97%)
Reported 854 alignments to 1 output stream(s)
";i:1;N;i:2;N;}i:2;i:1834;}i:64;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1834;}i:65;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:216:"La commande rapporte le nb de séquence (reads) trouvées dans la source, le nb 
de reads conservés (qui ont un rapport avec la référence), et le nb de reads 
exclus de la source (sans rapport avec la référence)";}i:2;i:2085;}i:66;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2301;}i:67;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2301;}i:68;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:80:"3) mapping au format SAM des reads sélectionnés par rapport à la référence:";}i:2;i:2303;}i:69;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2389;}i:70;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:151:"
Syntaxe:
       bowtie -S reference keep keep.sam
p.ex:
       bowtie -S rbwt keep25 25.sam
       bowtie -S rbwt keep23 23.sam
       ...
       ...
";i:1;N;i:2;N;}i:2;i:2389;}i:71;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2389;}i:72;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:84:"Ce qui recrée au format SAM, des fichiers correspondants aux reads conservés
mais ";}i:2;i:2549;}i:73;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:2633;}i:74;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:7:"mappés";}i:2;i:2634;}i:75;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:2641;}i:76;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:40:" par rapport à la référence indexée.";}i:2;i:2642;}i:77;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2682;}i:78;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:101:"
-rw-r--r-- 1 root root 140066 Mar 27 09:01 23.sam
-rw-r--r-- 1 root root 132623 Mar 27 09:01 25.sam
";i:1;N;i:2;N;}i:2;i:2689;}i:79;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2689;}i:80;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:9:"4) velvet";}i:2;i:2801;}i:81;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2810;}i:82;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2810;}i:83;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:49:"Comme d'ordinaire velvet s'exécute en 2 étapes:";}i:2;i:2812;}i:84;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2861;}i:85;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2861;}i:86;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:25:"Syntaxe avec référence:";}i:2;i:2863;}i:87;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2894;}i:88;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:146:"
velveth dossierprojet kmerint -reference reference.fasta -short -sam filtered_reads_files.sam
velvetg dossierprojet -exp_cov auto -amos_file yes
";i:1;N;i:2;N;}i:2;i:2894;}i:89;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2894;}i:90;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:5:"p.ex:";}i:2;i:3049;}i:91;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3060;}i:92;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:118:"
velveth AliAvecRef 25 -reference ref.fasta -short -sam 23.sam 25.sam
velvetg AliAvecRef -exp_cov auto -amos_file yes
";i:1;N;i:2;N;}i:2;i:3060;}i:93;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3060;}i:94;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:3188;}i:95;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:17:" !! Important !! ";}i:2;i:3190;}i:96;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:3207;}i:97;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3209;}i:98;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3209;}i:99;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:35:"pour velveth c'est bien le fichier ";}i:2;i:3212;}i:100;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:3247;}i:101;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:5:"FASTA";}i:2;i:3249;}i:102;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:3254;}i:103;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:37:" de la référence qui est utilisé !";}i:2;i:3256;}i:104;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3293;}i:105;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3293;}i:106;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:130:"Les fichiers SAM, des reads filtrés, sont des indications de placement des reads eux-mêmes par rapport à cette séquence fasta.";}i:2;i:3295;}i:107;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3425;}i:108;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3425;}i:109;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:496:"Il peut y avoir plusieurs séquences fasta dans le fichier de référence, par exemple des contigs issus d'un assemblage préalable, des chromosomes connus
d'un organisme, ou tout simplement une série de gènes dont on veut analyser
l'expression plutot que le tout. 
L'étape bowtie permet de filtrer, de ne conserver que les reads qui interviennent
dans un processus que l'on étudie, et d'accélérer l'assemblage en positionnant
les reads filtrés directement sur les séquences références.";}i:2;i:3427;}i:110;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3923;}i:111;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:3923;}}