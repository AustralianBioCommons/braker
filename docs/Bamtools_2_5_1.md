# *BAMTOOLS*

## Description
Bamtools is a C++ API and command-line toolkit for working with BAM data in the Braker workflow.
# USAGE
AUGUSTUS takes two mandatory arguments, a query file and a species identifier. A query file is an uncompressed fasta format containing DNA sequence. Augustus has been trained for predicting genes in a list of species. 

* Usage:
  * bamtools [tools] -in=[input file in BAM format] -out=[output filename]
  * tools list:
  	* convert  : prints number of alignments in BAM file(s).
	* count    : prints coverage data for a single BAM file.
	* coverage : filters BAM file(s).
	* filter   : prints header from BAM file(s).
	* header   : creates index for BAM file.
	* index    : merges multiple BAM files into one.
	* merge    : grab a random subset of alignment.
	* random   : grab a random subset of alignments.
	* revert   : removes duplicate marks and restores original (non-recalibrated) base qualities.
	* sort     : sorts a BAM file.
	* split    : splits a BAM file on user-specified property, creating a new BAM output file for each value found.
	* stat     : prints general alignment statistics.


* Input  
  * a BAM file 
* QUICK START 
  * Usage Example
  	* bamtools filter -in alignment.bam -out result.bam -length 100
		* in     = input BAM file
		* out    = output BAM file
		* length = output alignment BAM file with sequence longer than 100 base pairs.

- Please see more examples in the link_..

### Link(s)
  * [BAMTOOLS EXAMPLE](https://hcc.unl.edu/docs/applications/app_specific/bioinformatics_tools/data_manipulation_tools/bamtools/running_bamtools_commands/)


## Diagram
   * Not Available

## Version notes
    * BAMTOOLS 2.5.1
	* [Download](https://github.com/pezmaster31/bamtools)

### Installation
    * [Building and Installing](https://github.com/pezmaster31/bamtools/wiki/Building-and-installing)
		* git clone git://github.com/pezmaster31/bamtools.git

## Third party tools / dependencies
   * cmake is required[Installing CMAKE](https://cmake.org/install/)

## Tutorials
   * [SEE the Link(s) section above]

## Tool infrastructure requirements
   * To Be Investigated

### Scheduler
   * To Be Investigated

### Hardware
   * To Be Investigated

## Tool Install
   * Install Bamtools using [Anaconda](https://anaconda.org/bioconda/bamtools)

## *Compute infrastructure name* optimisation (**LINK**)

## Help / FAQ / Troubleshooting

## Licence

## Acknowledgements / citations / credits
