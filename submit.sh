#!/bin/bash
# Simple script to automate assembly jobs to SGE
# For different has lengths 

FORWARD_FILE=P.cact_411_1M_F_trim.fastq
REVERSE_FILE=P.cact_411_1M_R_trim.fastq
ASSEMBLY_NAME=P.cact.auto

cd $PWD
for HASH_LENGTH in $( seq 21 2 51 ); do
    echo "Hash length is $HASH_LENGTH"    
    qsub ~/scripts/align.sh 39 $FORWARD_FILE $REVERSE_FILE $ASSEMBLY_NAME
done 




