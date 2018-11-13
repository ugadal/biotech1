#!/usr/bin/python2




import MySQLdb, os

C=MySQLdb.connect(host='localhost',db='comparator2000')
c=C.cursor()


cmd='select max(seed_fasim) from ma_table'
c.execute(cmd)
#probleme de tuple quand on ne fait qu'un seul ... ; donc je met [0] au bout
cs=c.fetchone()[0]
#fetchone est un peu comme readline(); fetchall est comme readlines()
sc="""insert into table ma_table (seed_fasim,cov,len_read,kmer,n50,mx_contig,total) values (%i,%i,%i,%i,%i,%i,%i)"""

print cs
if not cs:cs=0
len_read=250
cov=100
kmer=31

while True:
    cs+=222
    print cs
    #cmd="fastqSimulate -f /data/big_data/my_sequences/chr03.fsa -o /tmp/fks -l %i -x %i -em 0 -ei 0 -ed 0 -se 800 50 -seed %i 2>/dev/null"
    cmd="fastqSimulate -f /data/big_data/my_sequences/chr03.fsa -o /tmp/fks -l %i -x %i -em 0 -ei 0 -ed 0 -seed %i -se 2>/dev/null"
    os.system(cmd%(len_read,cov,cs))
    cmd="velveth /tmp/assem %i -fastq /tmp/fks.s.fastq >/dev/null"%kmer
    os.system(cmd)
    cmd="velvetg /tmp/assem"
    f=os.popen(cmd)
    print f.readlines()[-1]
    exit()
i=1
cmd="fastqSimulate -f chr03.fsa -o fks -l 250 -x 50 -em 0 -ei 0 -ed 0 -pe 800 50 -seed %i noheading -only -type 2> /dev/null"%i
f=os.system(cmd)

cmd="velveth assem_compa2000 29 -fastq -longPaired fks.c.fastq"
f=os.system(cmd)

cmd="velvetg assem_compa2000 -ins_length 800 -exp_cov 50"
f=os.system(cmd)

