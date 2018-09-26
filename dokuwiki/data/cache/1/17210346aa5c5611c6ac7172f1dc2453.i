a:13:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:74:"cd /opt
cvs -d :pserver:cvs@cvs.open-bio.org:/home/repository/emboss login";i:1;N;i:2;N;}i:2;i:6;}i:2;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:6;}i:3;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:88;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:24:" (The password is 'cvs')";}i:2;i:90;}i:5;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:114;}i:6;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:121;}i:7;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:380:"
cvs -d :pserver:cvs@cvs.open-bio.org:/home/repository/emboss checkout emboss
cd emboss/emboss
rsync -av rsync://emboss.open-bio.org/EMBOSS/ .
sh make-static-developers

!! sous ubuntu, nécessite l'install de autoconf et libtool !!

(make install)

pour mettre à jour:
cd /opt/emboss/emboss
cvs update

puis sh make-static-developers, et install à chaque modification reçues

";i:1;N;i:2;N;}i:2;i:121;}i:8;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:121;}i:9;a:3:{i:0;s:12:"internallink";i:1;a:2:{i:0;s:5:"start";i:1;s:17:"Back to Main Page";}i:2;i:514;}i:10;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:541;}i:11;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:541;}i:12;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:541;}}