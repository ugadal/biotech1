a:8:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:0;}i:2;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:12:"taken from 
";}i:2;i:1;}i:3;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:40:"http://en.gentoo-wiki.com/wiki/Initramfs";i:1;N;}i:2;i:13;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:53;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:59;}i:6;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:1207:"
#Create a work directory.
mkdir /usr/src/initramfs
cd /usr/src/initramfs

# Create basic directories for initramfs.
mkdir -p bin lib dev etc mnt/root proc root sbin sys

# Copy devices required for booting.
cp -a /dev/{null,console,tty,md0,sd*} /usr/src/initramfs/dev/

# mdadm needs to be built as static, so that we don't need to
# bother with required libraries.
USE="static" emerge -v mdadm
cp -a /sbin/mdadm /usr/src/initramfs/bin/

# Create "init" file.
/usr/src/initramfs/init
   #!/bin/busybox sh
   mount -t proc none /proc
   mount -t sysfs none /sys

   # I named mine as "gentoo:0". Yours might be different.
   mdadm --assemble --scan /dev/md/gentoo:0
   # OR just "mdadm --assemble /dev/md0 /dev/sd[abc]1"

   mount -o ro /dev/md0 /mnt/root
   umount /proc
   umount /sys
   exec switch_root /mnt/root /sbin/init

chmod +x /usr/src/initramfs/init

# Generate initramfs file.
cd /usr/src/initramfs
find . -print0 | cpio --null -ov --format=newc | gzip -9 > /boot/initramfs-2.6.39-gentoo-r3.img

# This is optional if you explicitly assemble /dev/md0.
# But it's always a good idea to make things flexible.
mdadm --detail --scan >> /etc/mdadm.conf
cp -a /etc/mdadm.conf /usr/src/initramfs/etc/
";i:1;N;i:2;N;}i:2;i:59;}i:7;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:59;}}