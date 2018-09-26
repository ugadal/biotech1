a:10:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:10:"DHCPD.CONF";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:4:"file";i:1;a:3:{i:0;s:368:"
option domain-name-servers 8.8.8.8;
option routers 10.1.254.254;
#~ allow booting;
#~ allow bootp;
class "pxeclients" {
	match if substring(option vendor-class-identifier, 0, 9) = "PXEClient";
	filename grub2pxe;
	next-server 10.1.120.50;
	}

subnet 10.1.120.0 netmask 255.255.255.0 {
	pool {
		allow members of "pxeclients";
		range 10.1.120.1 10.1.120.255;
		}
	}

";i:1;s:10:"dhcpd.conf";i:2;N;}i:2;i:32;}i:4;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:420;}i:5;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:67:"DHCPD.CONF ADVANCED for LEGACY / UEFI 32 / UEFI 64 bits distinction";i:1;i:1;i:2;i:420;}i:2;i:420;}i:6;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:420;}i:7;a:3:{i:0;s:4:"file";i:1;a:3:{i:0;s:1517:"

option space PXE;
option PXE.mtftp-ip    code 1 = ip-address;
option PXE.mtftp-cport code 2 = unsigned integer 16;
option PXE.mtftp-sport code 3 = unsigned integer 16;
option PXE.mtftp-tmout code 4 = unsigned integer 8;
option PXE.mtftp-delay code 5 = unsigned integer 8;
option arch code 93 = unsigned integer 16; # RFC4578

# from the command
# grub2-mknetdir --net-directory=**your tftp dir goes here **
# 
# ex: grub2-mknetdir --net-directory=/var/tftp
#
#Netboot directory for i386-pc created. Configure your DHCP server to point to /boot/grub/i386-pc/core.0
#Netboot directory for i386-efi created. Configure your DHCP server to point to /boot/grub/i386-efi/core.efi
#Netboot directory for x86_64-efi created. Configure your DHCP server to point to /boot/grub/x86_64-efi/core.efi


option domain-name-servers 8.8.8.8;
option routers 10.1.254.254;

class "pxeclients" {
        match if substring(option vendor-class-identifier, 0, 9) = "PXEClient";
        next-server 10.1.120.50;
        if option arch = 00:06 {
                filename "/boot/grub/i386-pc/core.0";
                  } else if option arch = 00:07 {
                                  filename "/boot/grub/i386-efi/core.efi";
                  } else {
                                  filename "/boot/grub/x86_64-efi/core.efi";
                  }
        }

subnet 10.1.120.0 netmask 255.255.255.0 {
        pool {
                allow members of "pxeclients";
                range 10.1.120.1 10.1.120.255;
                }
        }

";i:1;s:10:"dhcpd.conf";i:2;N;}i:2;i:507;}i:8;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2043;}i:9;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:2043;}}