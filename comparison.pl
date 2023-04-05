#! /usr/bin/perl 
use strict;
use warnings;
use autodie;

my $f1 = shift || "gene_table_1.txt";
my $f2 = shift || "prGBM.Zscore.txt";
my %results;
open my $file1, '<', $f1;
while (my $line = <$file1>) { $results{$line} = 1 }
open my $file2, '<', $f2;
while (my $line = <$file2>) { $results{$line}++ }
foreach my $line (sort { $results{$b} <=> $results{$a} } keys %results) {
    print "$results{$line}: ", $line if $results{$line} > 1;
}