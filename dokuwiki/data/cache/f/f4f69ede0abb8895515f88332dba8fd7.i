a:32:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:19:"
emerge MailTools

";i:1;N;i:2;N;}i:2;i:6;}i:2;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:6;}i:3;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:124:"wEMBOSS utilise apache pour fonctionner, il est nécessaire de l'installer et de l'activer avant l'installation de wEMBOSS :";}i:2;i:34;}i:4;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:164;}i:5;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:41:"
emerge apache
/etc/init.d/apache2 start
";i:1;N;i:2;N;}i:2;i:164;}i:6;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:164;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:9:"download ";}i:2;i:214;}i:8;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:84:"http://sourceforge.net/projects/wemboss/files/wEMBOSS/2.2.1/wEMBOSSDIST-2.2.1.tar.gz";i:1;N;}i:2;i:223;}i:9;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:8:" to /opt";}i:2;i:311;}i:10;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:325;}i:11;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:160:"
cd /opt
tar xzvf wEMBOSSDIST-2.2.1.tar.gz
cd wEMBOSSDIST-2.2.1
cd wEMBOSSinstall
lisez INSTALL
lancez: perl install.pl

et répondez aux questions comme suit:
";i:1;N;i:2;N;}i:2;i:325;}i:12;a:3:{i:0;s:2:"hr";i:1;a:0:{}i:2;i:493;}i:13;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:116:"
/usr/local/share/EMBOSS
/usr/local/bin
apache
/var/www/localhost/htdocs
localhost
80
/opt/wemboss
"moi"@localhost

";i:1;N;i:2;N;}i:2;i:504;}i:14;a:3:{i:0;s:2:"hr";i:1;a:0:{}i:2;i:628;}i:15;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:86:"Modifications à effectuer dans le fichier /etc/apache2/vhosts.d/default_vhost.include";i:1;i:5;i:2;i:635;}i:2;i:635;}i:16;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:5;}i:2;i:635;}i:17;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:729;}i:18;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:46:"!!  Modifications différentes pour Apache 2.4";i:1;i:5;i:2;i:729;}i:2;i:729;}i:19;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:5;}i:2;i:729;}i:20;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:729;}i:21;a:3:{i:0;s:12:"internallink";i:1;a:2:{i:0;s:29:"modifications_apache24_emboss";i:1;s:18:" guide apache 2.4 ";}i:2;i:783;}i:22;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:837;}i:23;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:839;}i:24;a:3:{i:0;s:2:"hr";i:1;a:0:{}i:2;i:839;}i:25;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:322:"
ScriptAlias /wEMBOSS_cgi/ "/opt/wemboss/wEMBOSS_cgi/"


<Directory "/opt/wemboss/wEMBOSS_cgi">
        AllowOverride None
        Options None
        Order allow,deny
        Allow from all
        AuthType basic
        AuthUserFile "/etc/shadow"
        Authname "EMBOSS user"
        require valid-user
</Directory>

";i:1;N;i:2;N;}i:2;i:851;}i:26;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:851;}i:27;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:32:"Et quelques commandes pour finir";}i:2;i:1184;}i:28;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1222;}i:29;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:171:"
/etc/init.d/apache2 reload
groupadd shadow
usermod -a -G shadow apache
chgrp shadow /etc/shadow
chmod 640 /etc/shadow

#Créer un compte :
useradd -m 'Nom'
passwd 'Nom'

";i:1;N;i:2;N;}i:2;i:1222;}i:30;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1402;}i:31;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1402;}}