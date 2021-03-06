et  DESCRIPTION:
# mk module for quality control of FASTQ files
#
# USAGE:
# Single target execution: `mk <TARGET>` where TARGET is
# any line printed by the script `bin/mk-targets`
#
# Multiple target execution in tandem `bin/mk-targets | xargs mk`
#
# AUTHOR: HRG
#
# Run HiC-Pro alignment.
#
results/%:	data/%
	mkdir -p `dirname $target`
	HiC-Pro \
		--input $prereq \
		--output $target \
		--conf config.hicpro \
		--step mapping \
		--step proc_hic \
		--step quality_checks

