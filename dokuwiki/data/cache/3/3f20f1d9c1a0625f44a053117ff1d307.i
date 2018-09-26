a:9:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:0;}i:2;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:7:"dans   ";}i:2;i:1;}i:3;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:8;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:19:"/etc/conf.d/in.tftp";}i:2;i:10;}i:5;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:29;}i:6;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:31;}i:7;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:554:"

# Path to server files from
# Depending on your application you may have to change this.
# This is commented out to force you to look at the file!
INTFTPD_PATH="/data/tftp/"
#INTFTPD_PATH="/tftpboot/"
#INTFTPD_PATH="/tftproot/"

# For more options, see in.tftpd(8)
# -R 4096:32767 solves problems with ARC firmware, and obsoletes
# the /proc/sys/net/ipv4/ip_local_port_range hack.
# -s causes $INTFTPD_PATH to be the root of the TFTP tree.
# -l is passed by the init script in addition to these options.
INTFTPD_OPTS="-R 4096:32767 -s ${INTFTPD_PATH}"
";i:1;N;i:2;N;}i:2;i:38;}i:8;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:38;}}