#!/bin/bash


BRAKER_DIR="CHANGE THIS TO BRAKER SCRIPT DIRECTORY"
ASSEMBLED_CONTIG=denovoAssembled.fasta 
PROTEIN=protein_sequence_of_interest.faa
RNASEQ_DIR="CHANGE THIS TO ALIGNMENT DIRECTORY CONTAINING BAM FILES"
RNASEQ1=${RNASEQ_DIR}/ISOLATE_1.bam  
RNASEQ2=${RNASEQ_DIR}/ISOLATE_2.bam # if available
RNASEQ3=${RNASEQ_DIR}/ISOLATE_3.bam # if available


# Make the GenomeThreaderPATH available to the execution environment
GenomeThreaderPATH=/software/gth-1.7.1-Linux_x86_64-64bit/bin


### AUGUSTUS CONFIG DIRECTORY
if [[ -z "${AUGUSTUS_CONFIG_PATH}" ]];then
        export AUGUSTUS_CONFIG_PATH=/software/augustus/augustus-3.3.2/config
fi

### AUGUSTUS BIN DIRECTORY
if [[ -z "${AUGUSTUS_BIN_PATH}" ]];then
        export AUGUSTUS_BIN_PATH=/software/augustus/augustus-3.3.2/bin
fi

### AUGUSTUS SCRIPTS DIRECTORY
if [[ -z "${AUGUSTUS_SCRIPTS_PATH}" ]];then
        export AUGUSTUS_SCRIPTS_PATH=/software/augustus/augustus-3.3.2/scripts
fi

### BAMTOOLS DIRECTORY
if [[ -z "${BAMTOOLS_PATH}" ]];then
        export BAMTOOLS_PATH=/software/bamtools/build/src/toolkit
fi

### GENEMARK DIRECTORY
if [[ -z "${GENEMARK_PATH}" ]];then
        export GENEMARK_PATH=/software/GeneMark/gm_et_linux_64
fi

### SAMTOOLS DIRECTORY
if [[ -z "${SAMTOOLS_PATH}" ]];then
        export SAMTOOLS_PATH=/software/samtools/samtools-1.5/bin
fi

### ALIGNMENT TOOLS DIRECTORY (e.g., GenomeThreader, Spaln, or Exonerate)
if [[ -z "${ALIGNMENT_TOOL_PATH}" ]];then
        export ALIGNMENT_TOOL_PATH=${GenomeThreaderPATH};/software/exonerate/exonerate-2.2.0-x86_64/bin/exonerate;
fi

### PYTHON3 DIRECTORY
if [[ -z "${PYTHON3_PATH}" ]];then
        export PYTHON3_PATH=/software/PYTHON3/bin
fi

### BLAST DIRECTORY
if [[ -z "${BLAST_PATH}" ]];then
        export BLAST_PATH=/software/ncbi-blast-2.2.28+/bin
fi

#Tutorial https://github.com/Gaius-Augustus/BRAKER

# Using Genome, protein and transcriptiome data for Genome Annotation

${BRAKER_DIR}/braker.pl --species=AphanStellus --genome=${ASSEMBLED_CONTIG} \
                        --prot_seq=${PROTEIN} --prg=gth \
                        --ALIGNMENT_TOOL_PATH=${GenomeThreaderPATH} \
                        --trainFromGth
