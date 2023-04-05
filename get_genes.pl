#!/usr/bin/perl -w

use Data::Dumper;

my @header=qw/ID Chr Start End Segment/;

my $file = $ARGV[0] or die " Need to get txt file on the command line \n";


open (my $data, '<', $file) or die "Could not open '$file' $!\n";


while (my $line = <$data>) {
        chomp $line;

    my @fields = split (/\s+/ , $line);
    #my @fields2 = split (/\-/, $fields[1]);


#       for ($i=0; $i<=?; $i++) {
#               my $eachline[$i] = split "\n", $fields[1]);     

#               foreach $eachline[$i] ( $fields[1] ) {

                        #print "$sum\n";
    
                        print "S18\t$fields[0]\t$fields[1]\t$fields[2]\t$fields[3]\n";
#               }
#       }
}

#print "$sum[$i]\n";

