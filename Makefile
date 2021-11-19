sync: realsync fake

realsync:
	nice -19 eix-sync
autounmask:
	emerge -uDN --autounmask-write=y --with-bdeps y world


fake:
	emerge -puDN --with-bdeps y world
	@echo "try 'make real' to really setup this updates   "
fakehard:
	emerge -puDN --with-bdeps y world --backtrack=50 --complete-graph y
	@echo "try 'make real' to really setup this updates   "
real:
	nice -19 emerge -quDN --with-bdeps y world --keep-going
	emerge -p --depclean
realuc:
	nice -19 emerge -quDN --with-bdeps y world --keep-going --autounmask-continue
	emerge -p --depclean
netr:
	/etc/init.d/net.eth0 restart
	ifconfig eth0
fakesequencing:
	python fakesequence 3000 50
	/opt/phrap/phrap seqdata
	matcher seqdata.contigs fullseq -outfile stdout
clean:
	emerge --depclean
snoop:
	grep "78:31:c1:f3:0d:4f" /var/log/messages || echo "no trace"
	tail -F /var/log/messages  | grep 78:31:c1:f3:0d:4f
grub:
	grub-mkconfig -o /boot/grub/grub.cfg
bla:
	umount /tmp/bla || echo not mounted , Ignoring
	@echo done
pr: 213 313 413 513
213:
	sh run1m 2 1 999999 13 35p s2.p13.35p
313:
	sh run1m 3 1 999999 13 35p s3.p13.35p
413:
	sh run1m 4 1 999999 13 35p s4.p13.35p
513:
	sh run1m 5 1 999999 13 35p s5.p13.35p
