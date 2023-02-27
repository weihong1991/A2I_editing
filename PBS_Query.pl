#!/usr/bin/perl
open (I,"@ARGV[0]")||die "can't open IN0"; # *.bam
open (O,">@ARGV[1]")||die "can't open IN0";
# Generate pbsfor each file

$name=@ARGV[0];
$query=$name;
$level=$name;
$query=~s/bam/query/;
$level=~s/bam/query.level/;


print O "#!/bin/bash\n";
print O "###\n";
print O "#PBS -S /bin/bash\n";
print O "#PBS -N $name\n";
print O "#PBS -d .\n";
print O "#PBS -e . -o .\n";
print O "#PBS -q medium\n";
print O "#PBS -l nodes=1:ppn=1,walltime=06:00:00\n";
print O "#PBS -V\n";

print O "samtools index $name\n";
print O "perl Query_Editing_Level.pl Human_AG_NonRepetitive_hg19.txt $name $query\n";
print O "perl Query_level.pl $query $level\n";



