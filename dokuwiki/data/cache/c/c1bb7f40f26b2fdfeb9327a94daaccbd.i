a:16:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:44:"première modif dans /etc/apache2/httpd.conf";i:1;i:4;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:4;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:40:"Ajoutez Trois lignes un peu avant la fin";}i:2;i:55;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:95;}i:6;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:113:"  LoadModule usertrack_module modules/mod_usertrack.so
  LoadModule vhost_alias_module modules/mod_vhost_alias.so";}i:2;i:97;}i:7;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:94:"  <AuthnProviderAlias file shadfile>
       AuthUserFile "/etc/shadow"
  </AuthnProviderAlias>";}i:2;i:216;}i:8;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:123:"  # If you wish httpd to run as a different user or group, you must run
  # httpd as root initially and it will switch.
  #";}i:2;i:318;}i:9;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:451;}i:10;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:73:"La modification dans le default_vhost.include se simplifie elle devient :";i:1;i:4;i:2;i:451;}i:2;i:451;}i:11;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:4;}i:2;i:451;}i:12;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:53:"ScriptAlias /wEMBOSS_cgi/ "/opt/wemboss/wEMBOSS_cgi/"";}i:2;i:532;}i:13;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:159:"<Directory "/opt/wemboss/wEMBOSS_cgi">
      AuthBasicProvider shadfile
      AuthType basic
      Authname "EMBOSS user"
      Require valid-user
</Directory>";}i:2;i:589;}i:14;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:763;}i:15;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:763;}}