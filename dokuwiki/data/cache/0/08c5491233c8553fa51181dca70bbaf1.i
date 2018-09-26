a:13:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:0;}i:2;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:47:"This is the Yannick's Makefile to unzip a bank.";}i:2;i:1;}i:3;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:48;}i:4;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:48;}i:5;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:50:"##################################################";}i:2;i:50;}i:6;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:106;}i:7;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:144:"
     GZ := $(wildcard *.seq.gz)
     OK := $(GZ:.seq.gz=.seq)
     work : $(OK)
     
     %.seq : %.seq.gz
            gunzip -c $< > dzip/$@
";i:1;s:4:"make";i:2;N;}i:2;i:106;}i:8;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:106;}i:9;a:3:{i:0;s:12:"internallink";i:1;a:2:{i:0;s:5:"start";i:1;s:7:"Accueil";}i:2;i:280;}i:10;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:297;}i:11;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:297;}i:12;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:297;}}