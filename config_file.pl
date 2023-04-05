#!/usr/bin/perl -w

use autodie;

use constant {
FILE_1 => "gene_table_1.txt",
FILE_2 => "prGBM.Zscore.txt",
};

my %genes_hash1;
my %genes_hash2;

open my $G1, "<", FILE_1;

while (my $gene = <$G1>) {
	chomp $gene;
	$genes_hash1 { $gene } = 1;
}
close $G2;
open my $G2, "<", FILE_2;

while (my $gene = <$G2>) {
        chomp $gene;
        $genes_hash2 { $gene } = 1;
}
close $G2;
         
my %in_common

for my $DEG ( sort keys %genes_hash1 ) {
	if ( $genes_hash2{$DEG} ) {
		$in_common{$DEG} = 1;
	}
}

for my $DEG (sort keys %genes_hash1) {
	if ( not $in_common{$DEG}) {
		print "Genes $DEG is only in the first file\n";
 	}
}

for my $DEG (sort keys %genes_hash2) {
        if ( not $in_common{$DEG}) {
                print "Genes $DEG is only in ". FILE_2. "\n";
        }
}

for my $DEG (sort keys %in_common) {
                print "Genes $DEG is only in both files\n";
        }





