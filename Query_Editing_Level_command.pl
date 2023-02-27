#!/bin/perl
############################################################
#Author: Wei Hong
#perl script that queries editing level of known sites in STDIN multisample mpileup file.
#command: perl Query_Editing_Level_command.pl annotated_sites(0-based half-open bed file) bam_list_file out_prefix
#require Query_Editing_Level_mpileup_pipe.pl in current running folder

use warnings;
use strict;

##GLOBAL VARIABLES - PLEASE MODIFY THESE
my $minmapqual = 0; # MINIMUM READ MAPPING QUALITY SCORE
my $sampath = "/path/to/samtools-1.x/samtools"; # REQUIRE SAMTOOLS-1.x, TESTED ON 1.9
##END GLOBAL VARIABLES

my $site_list=$ARGV[0];
my $bam_list=$ARGV[1];
my $out_prefix=$ARGV[2];

my $start_time=time();

## please modify path/to/reference/genome.fa before running

system "$sampath mpileup -x -A -B -C 0 -l $site_list -d 100000000 -q $minmapqual -Q 0 -R --ff 1024 -f  path/to/reference/genome.fa -b $bam_list | perl Query_Editing_Level_mpileup_pipe.pl $site_list $out_prefix";

my $duration=time()-$start_time;
print "Total Execution time: $duration seconds \n";




