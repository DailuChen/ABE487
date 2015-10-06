#!/usr/bin/env perl

use strict;
use warnings;
use autodie;

my $infile = 'Perl_III.nobody.txt';
my $outfile = 'uppercase.out';

open my $in, "<", $infile;

#open (STDIN, "<", $infile) or die "Error reading infile: $!\n";
#open (STDOUT, ">", $outfile) or die "Error writing outfile: $!\n";
                                                                              
while (my $text = <$in>) {                        
    #my $uctext = uc $text;
    #chomp $uctext;
    #print STDOUT $uctext, "\n";
    print uc $text;
}

__END__

use autodie!

Don't open STDOUT/STDERR.  Let the user sort it:

  $ prog 1>out 2>err

ll. 13-15: No need to chomp and then print newline.

One point off.
