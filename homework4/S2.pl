#!/usr/bin/perl

use strict;
use warnings;
use autodie;
use feature 'say';

my $in_file  = shift || 'Perl_III.nobody.txt';
my $out_file = shift || 'uppercase.out';

open my $in_fh, '<', $in_file;
open my $out_fh, '>', $out_file;
                                                                              
while (my $line = <$in_fh>) {                        
   
    chomp $line;
    say uc $line;
}
