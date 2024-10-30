# nf-ddd-africa-cnv
A Nextflow workflow that integrates multiple CNV callers for improved CNV calling from exome sequencing data.

The approach uses the following exome sequencing-based CNV callers:
1. CANOES': https://github.com/ShenLab/CANOES
2. CLAMMS: https://github.com/rgcgithub/clamms
3. XHMM: https://zzz.bwh.harvard.edu/xhmm/

The workflow includes CNV calling, merging and random forest validation steps.

For the CNV calling step alone, you can type `git clone https://github.com/phelelani/nf-exomecnv.git`.
This project is a collaboration of Phelelani Mpangase and Yoni Wolberg.
