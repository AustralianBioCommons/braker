# *AUGUSTUS*

## Description
AUGUSTUS is a gene prediction program for eukaryotes and is part of the Braker workflow. It can be used to predict gene features using sequences.

# USAGE
AUGUSTUS takes two mandatory arguments, a query file and a species identifier. A query file is an uncompressed fasta format containing DNA sequence. Augustus has been trained for predicting genes in a list of species. 

* Usage:
  * augustus [parameters] --species=SPECIES queryfilename

* Input  
  * a DNA sequence file in FASTA file format (e.g. *de novo* assembly) 
  * species identitier 
* QUICK START 
  * Example of running Augustus on command line
  	* augustus --species=human query.fa

- Please see the AUGUSTUS README_ file for more information (e.g. species identifier and etc) in LINK section below.

### Link(s)
  * [AUGUSTUS README](http://augustus.gobics.de/binaries/README.TXT)

### Input(s)
   * a FASTA file with DNA sequences
   ```
   >Sequence1
   agtgctgcatgctagctagct
   >Sequence2
   gtgctngcatgctagctagctggtgtnntgaaaaatt
   ```

Note: AUGUSTUS also accepts files in annotated GENBANK format as input.

```
LOCUS       HS04636   9453 bp  DNA
FEATURES             Location/Qualifiers
     source          1..9453
     CDS             join(966..1017,1818..1934,2055..2198,2852..2995,3426..3607,
		                       4340..4423,4543..4789,5072..5358,5860..6007,6494..6903)
BASE COUNT     2937 a   1716 c  1710 g   3090 t
ORIGIN
         1 gagctcacat taactattta cagggtaact gcttaggacc agtattatga ggagaattta
        61 cctttcccgc ctctctttcc aagaaacaag gagggggtga aggtacggag aacagtattt
       121 cttctgttga aagcaactta gctacaaaga taaattacag ctatgtacac tgaaggtagc
       ...
      9421 aaaaaaaaaa aaaaatcgat gtcgactcga gtc	
//
```

### Parameter(s)
	* Species Identifier and queryfilename
	```
	--species=human query.fa
	```

### Output(s)
    * The output format is a Gene Transfer Format (GTF) file format.
	* [GFF](http://www.sanger.ac.uk/Software/formats/GFF/)

```
HS04636   AUGUSTUS   initial    966     1017    .       +       0       transcript_id "g1.1"; gene_id "g1";
HS04636   AUGUSTUS   internal   1818    1934    .       +       2       transcript_id "g1.1"; gene_id "g1";
````

### The columns (fields) contain:
```
seqname   source     feature    start   end   score   strand   frame    transcript and gene name
```

## Diagram
   * Not Available

## Version notes
    * AUGUSTUS 3.2.2
	* [Download](http://bioinf.uni-greifswald.de/augustus/)

### Container availability & engine
    * [Docker](https://github.com/Gaius-Augustus/Augustus/blob/master/Dockerfile)
	* run docker 
	    * docker build -t augustus .

## Third party tools / dependencies
   * Please see the *Install dependencies* section in [Augustus Github](https://github.com/Gaius-Augustus/Augustus)

## Tutorials
   * [Predicting Genes in Single Genomes with Augustus on Current Protocol](https://currentprotocols.onlinelibrary.wiley.com/doi/abs/10.1002/cpbi.57)
   * [Tutorial on Gene Prediction with AUGUSTUS](https://vcru.wisc.edu/simonlab/bioinformatics/programs/augustus/docs/tutorial2015/index.html)

## Tool infrastructure requirements
   * To Be Investigated

### Scheduler
   * To Be Investigated

### Hardware
   * To Be Investigated

## Tool Install
   * Install Augustus using [Anaconda](https://anaconda.org/bioconda/augustus)
   * Install Augustus using the source from [Github](https://github.com/Gaius-Augustus/Augustus)

## *Compute infrastructure name* optimisation (**LINK**)

## Help / FAQ / Troubleshooting

## Licence

## Acknowledgements / citations / credits
