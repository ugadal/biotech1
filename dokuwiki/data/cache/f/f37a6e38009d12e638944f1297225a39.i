a:21:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:19:"
emerge MailTools

";i:1;N;i:2;N;}i:2;i:6;}i:2;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:6;}i:3;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:9:"download ";}i:2;i:34;}i:4;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:84:"http://sourceforge.net/projects/wemboss/files/wEMBOSS/2.2.1/wEMBOSSDIST-2.2.1.tar.gz";i:1;N;}i:2;i:43;}i:5;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:8:" to /opt";}i:2;i:131;}i:6;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:145;}i:7;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:160:"
cd /opt
tar xzvf wEMBOSSDIST-2.2.1.tar.gz
cd wEMBOSSDIST-2.2.1
cd wEMBOSSinstall
lisez INSTALL
lancez: perl install.pl

et répondez aux questions comme suit:
";i:1;N;i:2;N;}i:2;i:145;}i:8;a:3:{i:0;s:2:"hr";i:1;a:0:{}i:2;i:313;}i:9;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:116:"
/usr/local/share/EMBOSS
/usr/local/bin
apache
/var/www/localhost/htdocs
localhost
80
/opt/wemboss
"moi"@localhost

";i:1;N;i:2;N;}i:2;i:324;}i:10;a:3:{i:0;s:2:"hr";i:1;a:0:{}i:2;i:448;}i:11;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:86:"Modifications à effectuer dans le fichier /etc/apache2/vhosts.d/default_vhost.include";i:1;i:5;i:2;i:455;}i:2;i:455;}i:12;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:5;}i:2;i:455;}i:13;a:3:{i:0;s:2:"hr";i:1;a:0:{}i:2;i:550;}i:14;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:322:"
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

";i:1;N;i:2;N;}i:2;i:562;}i:15;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:562;}i:16;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:32:"Et quelques commandes pour finir";}i:2;i:895;}i:17;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:933;}i:18;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:95:"
groupadd shadow
usermod -a -G shadow apache
chgrp shadow /etc/shadow
chmod 640 /etc/shadow



";i:1;N;i:2;N;}i:2;i:933;}i:19;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1037;}i:20;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1037;}}