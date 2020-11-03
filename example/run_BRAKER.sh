#!/bin/bash

module load samtools/1.5
module load blast/2.2.28
module load exonerate/2.2.0
module load GCC/5.4.0-2.26

BRAKER_DIR=/home/m.thang/software/BRAKER/scripts
PACHY_CONTIG=../data/pachy.newheader.fasta
PROTEIN=../ref_data/Aphanomyces_stellatus/Aphanomyces_stellatus.faa
RNASEQ=../analysis/mapping/bwa/erianthus_sorted.bam

GenomeThreaderPATH=/nfsmounts/qfab_data/bora_common/projects/10_422-CSIRO-sugarcane/analysis/pachymetra/v1.0.0_20180208/software/gth-1.7.1-Linux_x86_64-64bit/bin

#/nfsmounts/qfab_sw/augustus/augustus-3.3.2

### AUGUSTUS CONFIG DIRECTORY
if [[ -z "${AUGUSTUS_CONFIG_PATH}" ]];then
        export AUGUSTUS_CONFIG_PATH=/nfsmounts/qfab_sw/augustus/augustus-3.3.2/config
fi

### AUGUSTUS BIN DIRECTORY
if [[ -z "${AUGUSTUS_BIN_PATH}" ]];then
        export AUGUSTUS_BIN_PATH=/nfsmounts/qfab_sw/augustus/augustus-3.3.2/bin
fi

### AUGUSTUS SCRIPTS DIRECTORY
if [[ -z "${AUGUSTUS_SCRIPTS_PATH}" ]];then
        export AUGUSTUS_SCRIPTS_PATH=/nfsmounts/qfab_sw/augustus/augustus-3.3.2/scripts
fi

### BAMTOOLS DIRECTORY
if [[ -z "${BAMTOOLS_PATH}" ]];then
        export BAMTOOLS_PATH=/home/m.thang/software/bamtools/build/src/toolkit
fi

### GENEMARK DIRECTORY
if [[ -z "${GENEMARK_PATH}" ]];then
        export GENEMARK_PATH=/home/m.thang/software/GeneMark/gm_et_linux_64
fi

### SAMTOOLS DIRECTORY
if [[ -z "${SAMTOOLS_PATH}" ]];then
        export SAMTOOLS_PATH=/nfsmounts/qfab_sw/samtools/samtools-1.5/bin
fi

### ALIGNMENT TOOLS DIRECTORY (e.g., GenomeThreader, Spaln, or Exonerate)
if [[ -z "${ALIGNMENT_TOOL_PATH}" ]];then
        export ALIGNMENT_TOOL_PATH=${GenomeThreaderPATH};/nfsmounts/qfab_sw/exonerate/exonerate-2.2.0-x86_64/bin/exonerate;
fi

### PYTHON3 DIRECTORY
if [[ -z "${PYTHON3_PATH}" ]];then
        export PYTHON3_PATH=/home/m.thang/anaconda3/bin
fi

### BLAST DIRECTORY
if [[ -z "${BLAST_PATH}" ]];then
        export BLAST_PATH=/nfsmounts/qfab_sw/blast/src/ncbi-blast-2.2.28+/bin
fi

${BRAKER_DIR}/braker.pl --genome=${PACHY_CONTIG} --prot_seq=${PROTEIN} --prg=gth --bam ${RNASEQ} --softmasking
