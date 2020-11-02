# *SAMTOOLS*

## Description
Samtools is a suite of programs for interacting with high-throughput sequencing data in the Braker workflow. Samtools consists of three separate repositories.

# USAGE
Samtools accepts file in SAM or BAM format.

* Usage:
  * samtools [tools] input_file.bam
  * tools list:
  	* view      : Extract/print all or sub alignments in SAM or BAM format.
	* sort      : Sort alignments by leftmost coordinates.
	* index     : Index sorted alignment for fast random acces.
	* idxstats  : Retrieve and prints stats in the index file.
	* flagstat  : Calculate and print statisitic of the input BAM file to stdout.
	* stats     : Collect statistic from BAM files and outputs in a text format.
	* bedcov    : Reports the total read base count for each genomic region specified in the supplied BED file
	* depth     : Computes the read depth at each position or region.
	* merge     : Merge multiple sorted alignment files, producing a single sorted output file.
	* faidx     : Index reference sequence in FASTA format.
	* fqidx     : Index reference sequence in FASTQ format.
	* tview     : Text alignment view.
	* split     : Splits a file by read group, producing one or more output files matching common prefix.
	* quickcheck: Check that input files appear to be intact.
	* dict      : Create a sequence dictionary file from a fasta file.
	* fixmate   : Fill in mate coordinates.
	* mpileup   : Generate textual pileup for one or more multiple BAM files.
	* coverage  : Produces a histogram or table of coverage per chromosome.
	* flags     : Convert between textual and numeric flag representation.
	* fastq/a	: Convert a BAM or CRAM into either FASTQ or FASTA format.
	* collate	: Shuffles and groups reads together by their names.
	* reheader  : Replace the header in BAM file.
	* cat 	    : Concatenate BAM file.
	* rmdup 	: replaced by markdup
	* calmd		: Generate the MD tag
	* targetcut	: Identifies traget regions by examining the continuity of read depth.
	* phase 	: Call and phase heterozygous SNPs.
	* depad		: Convert a BAM aligned against a padded reference to a BAM aligned against the depadded reference.
	* addreplacerg: Adds or replaces read group tags in a file.

* GLOBAL COMMAND OPTIONS
	* see [link](http://www.htslib.org/doc/samtools.html#:~:text=Samtools%20is%20a%20set%20of,to%20work%20on%20a%20stream.)


* Input  
  * a BAM file 
* QUICK START 
  * Usage Example
  	* samtools index aligned.bam
		* input  = aligned.bam
		* output = output a bai file (e.g. aligned.bam.bai)

- More examples can be found in this link_.


### Link(s)
  * [SAMTOOLS link](http://www.htslib.org/doc/samtools.html#:~:text=Samtools%20is%20a%20set%20of,to%20work%20on%20a%20stream.)


## Diagram
   * Not Available

## Version notes
    * SAMTOOLS 1.5 or latest
	* [Download](http://www.htslib.org/)

### Installation
    * [Installing](http://www.htslib.org/download/)

## Third party tools / dependencies
   * [BCFTOOLS](http://www.htslib.org/download/)
   * [HTSLIB](http://www.htslib.org/download/)

## Tutorials
   * [SEE the Link(s) section above]

## Tool infrastructure requirements
   * To Be Investigated

### Scheduler
   * To Be Investigated

### Hardware
   * To Be Investigated

## Tool Install
   * Install samtools using [Anaconda](https://anaconda.org/bioconda/samtools)

## *Compute infrastructure name* optimisation (**LINK**)

## Help / FAQ / Troubleshooting

## Licence

## Acknowledgements / citations / credits
