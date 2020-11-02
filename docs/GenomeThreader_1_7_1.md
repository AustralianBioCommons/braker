# *GENOME THREADER*

## Description
GenomeThreader is a software tool to compute gene structure predictions. The gene structure predictions are calculated using a similarity-based approach where additional cDNA/EST and/or protein sequences are used to predict gene structures via spliced alignments.

# USAGE

* Usage:
  * gth [options] -genomic genseqfiles -cdna cdnafiles -protien proteinfiles
  	* genseqfile = the input files containing the genomic template
  	* cdnafiles  = the input files containting cDNAs/ESTs sequences
	* proteinfiles = the input files containinng protein sequences

* GENOMETHREADER(gth) OPTIONS OVERVIEW  
	* Input Options
		* genomic - specify input files containing genomic sequences
		* cdna	  - specify input files containing cDNA/EST sequences
		* protein - specify input files containing protein sequences
	* Parameter Files
		* species 		   - specify species to select splice site model
		* bssm	  		   - read bssm parameter from file
		* scorematrix      - read amino acid substitution scoring matrix from file
		* translationtable - set the codon translation table
	* Strand Direction
		* f		 - analyze only forward strand of genomic sequences
		* r	     - analyze only reverse strand of genomic sequences
		* cdnaforward - align only forward strand of cDNAs
	* Genomic Sequence Positions
		* frompos- analyze genomic sequence from this position
		* topos  - analyze genomic sequence to this position
		* width  - analyze only this width of genomic sequence
	* Output
		* v					- be verbose
		* xmlout			- show output in XML format
		* gff3out			- show output in GFF3 format
		* md5ids			- show MD5 fingerprints as sequence IDs
		* o					- redirect output to specified file
		* gzip				- gzip compressed output file
		* bgzip2			- bzip2 compressed output file
		* force				- force writing to output file
		* skipalignmentout	- skip output of spliced alignments
		* mincutoffs		- show full spliced alignments
		* showintronmaxlen	- set the maximum length of a fully shown intron
		* minorflen			- set the minimum length of an ORF to be shown
		* startcodon		- require that an ORF must begni with a start codon
		* finalstopcodon	- require that the final ORF must end with a stop codon
		* showseqnums		- show sequence numbers in output
		* pglgentemplate	- show genomic template in PGL lines
		* gs2out			- output in old GeneSeqer2 format
	* Data Preprocessing
		* maskpolyatails 	- mask poly(A) tails in cDNA/EST files
		* proteinsmap 		- specify smap file used for protein files
		* noautoindex 		- do not create indices automatically
		* createindicesonly - stop program flow after the indices have been created
		* skipindexcheck skip - index check (in preprocessing phase)
	* Similarity Filter
		* minmatchlen 		- specify minimum match length (cDNA matching)
		* seedlength 		- specify the seed length (cDNA matching)
		* exdrop 			- specify the Xdrop value for edit distance
		* prminmatchlen 	- specify minimum match length (protein matches)
		* prseedlength 		- specify seed length (protein matching)
		* prhdist 			- specify Hamming distance (protein matching)
		* online 			- run the similarity filter online
		* inverse 			- invert query and index in vmatch call
		* exact 			- use exact matches
		* gcmaxgapwidth 	- set the maximum gap width for global chains
		* gcmincoverage 	- set the minimum coverage of global chains
		* paralogs 			- compute paralogous genes (different chaining procedure)
		* enrichchains 		- enrich genomic sequence part of global chains with additional matches
	* Intron Cutout Technique
		* introncutout 		- enable the intron cutout technique
		* fastdp 			- use jump table to increase speed of DP calculation
		* autointroncutout 	- set the automatic intron cutout matrix size
		* icinitialdelta 	- set the initial delta used for intron cutouts
		* iciterations 		- set the number of intron cutout iterations
		* icdeltaincrease 	- set the delta increase during every iteration
		* icminremintronlen - set the minimum remaining intron length
	* U12-type Intron Model
		* nou12intronmodel 	- disable the U12-type intron model
		* u12donorprob 		- set the probability for perfect U12-type donor
		* u12donorprob1mism - set the prob. for U12-type donor w. 1 mismatch
	* Basic DP Algorithm
		* probies			- set the initial exon state probability
		=* probdelgen 		- set the genomic sequence deletion probability
		* identityweight 	- set the pairs of identical characters weight
		* mismatchweight 	- set the weight for mismatching characters
		* undetcharweight 	- set the weight for undetermined characters
		* deletionweight 	- set the weight for deletions
	* Short Exon/Intron Parameters
		* dpminexonlen 		- set the minimum exon length for the DP
		* dpminintronlen 	- set the minimum intron length for the DP
		* shortexonpenal 	- set the short exon penalty
		* shortintronpenal 	- set the short intron penalty
	* Special Parameters DP Algorithm
		* wzerotransition 	- set the zero transition weights window size
		* wdecreasedoutput  - set the decreased output weights window size
	* Processing of “raw” spliced alignments
		* leadcutoffsmode 	- set the cutoffs mode for leading bases
		* termcutoffsmode   - set the cutoffs mode for terminal bases
		* cutoffsminexonlen - set the cutoffs minimum exon length
		* scoreminexonlen 	- set the score minimum exon length
	* Advanced Similarity Filter Option
		* minaveragessp 	- set the minimum average splice site prob.
	* Spliced Alignment Filter
		* minalignmentscore - set the minimum alignment score
		* maxalignmentscore - set the maximum alignment score
		* mincoverage 		- set the minimum coverage
		* maxcoverage 		- set the maximum coverage
		* intermediate 	 	- stop after calc. of spliced alignments
		* sortags 			- sort alternative gene structures
		* sortagswf 		- set the weight factor for the sorting of AGSs
		* exondistri 		- show the exon length distribution
		* introndistri 		- show the intron length distribution
		* refseqcovdistri 	- show the reference sequence coverage distribution
		* first 			- set the maximum number of spliced alignments
		* help 				- show basic options and exit
		* help+ 			- show all options and exit
		* version 			- display version information and exit

* QUICK START 
  * Usage Example see [link](https://genomethreader.org/doc/gthmanual.pdf)

- More information can be found in this link_.


### Link(s)
  * [GENOMETHREADER link](https://genomethreader.org/)


## Diagram
   * Not Available

## Version notes
    * GENOMETHREADER 1.7.1 or latest
	* [Download](https://genomethreader.org/download.html)

### Installation
    * wget http://genomethreader.org/distributions/gth-1.7.1-Linux_x86_64-64bit.tar.gz
	* tar -xzf gth-1.7.1-Linux_x86_64-64bit.tar.gz
	* rm gth-1.7.1-Linux_x86_64-64bit.tar.gz
	* ln -i gth-1.7.1-Linux_x86_64-64bit/bin/gth "${binary_location}"
	# GenomeThreader requires its data to be in the same directory as the binary.
	* cp -ir gth-1.7.1-Linux_x86_64-64bit/bin/gthdata "${binary_location}"
	* cp -ir gth-1.7.1-Linux_x86_64-64bit/bin/bssm "${binary_location}"

## Third party tools / dependencies
   * 

## Tutorials
   * [SEE the Link(s) section above]

## Tool infrastructure requirements
   * To Be Investigated

### Scheduler
   * To Be Investigated

### Hardware
   * To Be Investigated

## Tool Install
   * Install exonerate using [Anaconda](https://anaconda.org/bioconda/genomethreader)

## *Compute infrastructure name* optimisation (**LINK**)

## Help / FAQ / Troubleshooting

## Licence

## Acknowledgements / citations / credits
