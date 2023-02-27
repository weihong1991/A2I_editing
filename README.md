# A2I_editing
Codes for identify A-to-I RNA editing from bulk RNA-seq bamfiles
Modified from Han et al (2015)

## Codes and data
##### Human_AG_NonRepetitive_hg19.txt
Annotation of known A-to-I editing sites
##### PBS_Query.pl
Submit to HPC
##### Query_Editing_Level_command.pl
Main code of filtering
##### Query_Editing_Level_mpileup_pipe.pl
Generate mpileup file with samtools and pipe to Query_Editing_Level_command.pl

## References
Leng Han et. al., The Genomic Landscape and Clinical Relevance of A-to-I RNA Editing in Human Cancers. 
Cancer Cell (2015). VOLUME 28, ISSUE 4, P515-528, DOI: 10.1016/j.ccell.2015.08.013
