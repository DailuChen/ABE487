#!/usr/bin/perl

use strict;
use warnings;

my $infile = 'Perl_III.nobody.txt';
my $outfile = 'uppercase.out';

open (STDIN, "<", $infile) or die "Error reading infile: $!\n";
open (STDOUT, ">", $outfile) or die "Error writing outfile: $!\n";
                                                                              
while (my $text = <STDIN>) {                        
   
    my $uctext = uc $text;
    chomp $uctext;
    print STDOUT $uctext, "\n";
}
