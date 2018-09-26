a:7:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:170:"
infoseq seqdata.contigs -only -length -noheading | sort -n | awk '{len[i++]=$1;sum+=$1} END {for (j=0;j<i+1;j++) {csum+=len[j]; if (csum>=sum/2) {print len[j];break}}}'
";i:1;N;i:2;N;}i:2;i:6;}i:2;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:6;}i:3;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:13:"ou plus court";}i:2;i:185;}i:4;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:204;}i:5;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:155:"
infoseq seqdata.contigs -noheading | sort -n | awk '{len[i++]=$6;sum+=$6} END {for (j=0;j<i+1;j++) csum+=len[j]; if (csum>=sum/2) {print len[j];break}}}'
";i:1;N;i:2;N;}i:2;i:204;}i:6;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:204;}}