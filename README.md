# mk-hicpro-validpairs #

Run HiC-Pro up to generation of `validPairs` files using `mk`. 

THESE README HAS ROOM FOR IMPROVEMENT

## About ##

(From HiC-Pro documentation) 

Using Hi-C data, each reads mate has to be independantly aligned on the reference genome. The current workflow implements a two steps mapping strategy. First, the reads are aligned using an end-to-end aligner. Second, reads spanning the ligation junction are trimmmed from their 3' end, and aligned back on the genome. Aligned reads for both fragment mates are then paired in a single paired-end BAM file. Singletons are discarded, and multi-hits are filtered according to the configuration parameters (--rm-multi). Note that if the --dnase mode is activated, HiC-Pro will skip the second mapping step.


## Output ##

(From HiC-Pro documentation)

The directory `results/mapping` contains:

`*bwt2pairs.bam` (the final bam with paired aligned reads)

`*pairstat` (the mapping statistics)

`*.bam` (aligned R1 and R2 reads, end to end)

`*_unmap.fastq` (the reads that couldn't be mapped after the end to end alignment)

`*_trimmed.fastq` (the trimmed reads that weren't mapped after the end to end alignment)

`*_trimmed.bam` (the alignment of the trimmed reads)

`*bwt2merged.bam` (merged BAM file after both alignment steps)

`*.mapstat` (the mapping statistics per read mate)

Use [this](https://nf-co.re/hic/docs/output) website to type this section up.


## Usage ##



## Options ##

@@How can you customize the analysis using environment vars or config.mk@@


## Requirements ##

- [`mk`](http://doc.cat-v.org/bell_labs/mk/mk.pdf "A successor for `make`.")

- [`findutils`](https://www.gnu.org/software/findutils/ "Basic directory searching utilities of the GNU operating system.")

- [`coreutils`](https://www.gnu.org/software/coreutils/ "basic file, shell and text manipulation utilities of the GNU operating system.")

- [HiC-Pro](https://genomebiology.biomedcentral.com/articles/10.1186/s13059-015-0831-x "An optimized and flexible pipeline for Hi-C data processing")


## References ##

- [HiC-Pro reference manual](https://nservant.github.io/HiC-Pro/MANUAL.html)

