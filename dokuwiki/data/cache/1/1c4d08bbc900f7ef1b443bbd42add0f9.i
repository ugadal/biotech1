a:7:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:201:"
GZ := $(wildcard *.seq.gz)
UNZIPPED := $(GZ:.seq.gz=.seq)
DIR = unzipped

all: $(DIR) $(UNZIPPED)

%.seq: %.seq.gz
	gunzip -c $< > $(DIR)/$@

$(DIR):
	mkdir $(DIR)

clean:
	rm $(DIR)/*
	rmdir $(DIR)

";i:1;s:4:"make";i:2;N;}i:2;i:6;}i:2;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:6;}i:3;a:3:{i:0;s:12:"internallink";i:1;a:2:{i:0;s:5:"start";i:1;N;}i:2;i:222;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:231;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:231;}i:6;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:231;}}