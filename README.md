
# Usage

From HiC-Pro documentation: 

Each mate is independantly aligned on the reference genome. The mapping is performed in two steps. First, the reads are aligned using an end-to-end aligner. Second, reads spanning the ligation junction are trimmmed from their 3' end, and aligned back on the genome.
 
Aligned reads for both fragment mates are then paired in a single paired-end BAM file. Singletons and multi-hits can be discarded according the confirguration parameters. Note that if if the LIGATION_SITE parameter in the not defined, HiC-Pro will skip the second step of mapping.


# Options

@@How can you customize the analysis using environment vars or config.mk@@

# Design considerations

@@What was taken into account to build this project?@@

# Requirements

- [`mk`](http://doc.cat-v.org/bell_labs/mk/mk.pdf "A successor for `make`.")

- [`findutils`](https://www.gnu.org/software/findutils/ "Basic directory searching utilities of the GNU operating system.")

- [`coreutils`]( "basic file, shell and text manipulation utilities of the GNU operating system.")

- [HiC-Pro](https://genomebiology.biomedcentral.com/articles/10.1186/s13059-015-0831-x "An optimized and flexible pipeline for Hi-C data processing")

# References

@@What documents did you used for making this module?@@

@@Where is the documentation for the software used?@@
