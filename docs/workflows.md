# Description

Introduction of workflow and its component tools.

1. *AUGUSTUS* 		- a program that predicts genes in eukaryotic genomic sequences.
2. *BAMTOOLS* 		- a programmer's API and an end-user's toolkit for handling BAM files.
3. *BLAST*			- a tool to find regions of similiarity between biological sequences.
4. *EXONERATE* 		- a generic tool for pairwise sequence comparison.
5. *GENEMARK-ES* 	- 
6. *GENOMETHREADER* - a software tool to compute gene structure predictions.
7. *SAMTOOLS* 		- a suite of programs for interacting with high-throughput sequencing data.


Documentation structure:

|Tool / workflow | Documentation | Optimisation |
|-----------|--------------------------|------------------|
|*AUGUSTUS* | [AUGUSTUS](Augustus_3_2_2.md) | *Infrastructure optimisation .md for tool #1* |
|*BAMTOOLS* | [BAMTOOLS](Bamtools_2_5_1.md) | *Infrastructure optimisation .md for tool #2* |
|*BLAST*    | [BLAST](Blast_2_2_28+.md) | *Infrastructure optimisation .md for tool #3* |
|*EXONERATE* | [EXONERATE](Exonerate_2_2_0.md) | *Infrastructure optimisation .md for tool #3* |
|*GENEMARK-ES* | [GENEMARK-ES](GeneMark_v4.md) | *Infrastructure optimisation .md for tool #3* |
|*GENOMETHREADER* | [GENOMETHREADER](GenomeThreader_1_7_1.md) | *Infrastructure optimisation .md for tool #3* |
|*SAMTOOLS* | [SAMTOOLS](Samtools_1_5.md) | *Infrastructure optimisation .md for tool #3* |

# Diagram

Logical visual description of processing steps for workflow can be found in the BRAKER github (see https://github.com/Gaius-Augustus/BRAER).


# Releases

# Tools

1. *AUGUSTUS*
2. *BAMTOOLS*
3. *BLAST*
4. *EXONERATE*
5. *GENEMARK-ES*
6. *GENOMETHREADER*
7. *SAMTOOLS*

# Tutorials
  * Publication (https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6635606/)
  * User Manual (https://fossies.org/linux/augustus/docs/tutorial2018/BRAKER_userguide.pdf)

# Third party tools / dependencies
BRAKER s a collection of Perl and Python scripts. Below is a list of scripts required to execute the main script (braker.pl)
  * BRAKER main scripts
   * align2hints.pl
   * filterGenemark.pl
   * filterIntronsFindStrand.pl
   * startAlign.pl
   * helpMod.pm
   * findGenesInIntrons.pl
   * downsample_traingenes.pl
   * ensure_n_training_genes.py
  * Perl dependencies - BRAKER requires some dependencies from the CPAN-perl modules to be installed.
  	* File::Spec::Functions
  	* Hash::Merge
  	* List::Util
  	* Logger::Simple
  	* Module::Load::Conditional
  	* Parallel::ForkManager
  	* POSIX
  	* Scalar::Util::Numeric
  	* YAML
  	* Math::Utils
  * For ProtHint, used when protein input is supplied, also install:
  	* MCE::Mutex
  	* threads

## BRAKER workflow example
  * This BRAKER workflow script is written in bash script and implemented by [QFAB](https://qfab.org/)
  * The example bash script can be found [here](https://github.com/AustralianBioCommons/braker/blob/master/example/run_BRAKER.sh).

# Workflow infrastructure requirements

## Workflow manager

## Scheduler

## Container engine

## Hardware

# Workflow Install
  * Braker can be installed using the package manager Anaconda if root permissions on the linux machine is not available.  * Anaconda (https://www.anaconda.com/distribution/)
  	* Installation (see https://github.com/Gaius-Augustus/BRAKER for more details)
		* wget https://repo.anaconda.com/archive/Anaconda3-2018.12-Linux-x86_64.sh
		* bash bin/Anaconda3-2018.12-Linux-x86_64.sh # do not install VS (needs root privileges)
		* conda install -c anaconda perl
		* conda install -c bioconda perl-app-cpanminus
		* conda install -c bioconda perl-hash-merge
		* conda install -c bioconda perl-parallel-forkmanager
		* conda install -c bioconda perl-scalar-util-numeric
		* conda install -c bioconda perl-yaml
		* conda install -c bioconda perl-class-data-inheritable
		* conda install -c bioconda perl-exception-class
		* conda install -c bioconda perl-test-pod
		* conda install -c anaconda biopython
		* conda install -c bioconda perl-file-homedir
		* conda install -c bioconda perl-file-which # skip if you are not comparing to reference annotation
		* conda install -c bioconda perl-mce
		* conda install -c bioconda perl-threaded 
		* cpanm Logger::Simple
  
# *Compute infrastructure name* optimisation **LINK**

# Help / FAQ / Troubleshooting

# Licence(s)

# Acknowledgements / citations / credits
