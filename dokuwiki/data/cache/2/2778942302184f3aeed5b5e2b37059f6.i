a:20:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:0;}i:2;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:230:"SquashFS est un système de fichiers compressé, il permet d'occuper moins de place et est plus rapide pour tout type de lecture.
La particularité est qu'on peut le monter sur un dossier, en revanche on ne pourra pas le modifier.";}i:2;i:1;}i:3;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:231;}i:4;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:231;}i:5;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:27:"Pour installer les outils :";}i:2;i:233;}i:6;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:266;}i:7;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:102:"
eix -c squash     #Permet de trouver le bon outils à installer et sa version
emerge squashfs-tools 
";i:1;N;i:2;N;}i:2;i:266;}i:8;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:266;}i:9;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:25:"Pour créer un squashFS :";}i:2;i:378;}i:10;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:409;}i:11;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:72:"
mksquashfs [dossier] [nom_fs]
Exemple :
mksquashfs Swiss-Prot/ bla.sfs
";i:1;N;i:2;N;}i:2;i:409;}i:12;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:409;}i:13;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:34:"Pour monter le fs sur un dossier :";}i:2;i:491;}i:14;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:531;}i:15;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:77:"
mount -o loop [nom_fs] [dossier]
Exemple :
mount -o loop bla.sfs /tmp/test/
";i:1;N;i:2;N;}i:2;i:531;}i:16;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:531;}i:17;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:70:"Remarque: l'option -o loop doit être utilisée car c'est un fakedisk.";}i:2;i:618;}i:18;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:688;}i:19;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:688;}}