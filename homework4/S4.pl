#!/usr/bin/env perl
 
use strict;  
use warnings;
use autodie;
use feature 'say';

my $file = 'Perl_III.fastq.txt';
open my $fh, '<', $file;
my $num_line = 0;
my $num_char = 0;

while (my $line = <$fh>) {
    $num_line++;
    $num_char += length($line);
}
my $ave_length = $num_char / $num_line;

say "Total number of lines is $num_line";
say "Total number of characters is $num_char";
say "The average line length is $ave_length";

__END__

Embrace "say"!
