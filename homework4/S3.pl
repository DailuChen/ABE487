#!/usr/bin/env perl 

use strict;
use warnings;
use autodie;

my $infasta  = 'Perl_III.fasta.txt';
my $outfasta = 'Perl_III.fasta.out';

open my $STDIN,  '<', $infasta;
open my $STDOUT, '>', $outfasta;

my $name;
my $sequence = '';

while (my $line = <$STDIN>) {
    chomp $line;
    if ($line =~ /^>/) {

        if (length($sequence) > 0) {
            print($STDOUT $name, "_reverse_complement\n", $sequence, "\n");
            $sequence = '';
        }

        $name = $line;
    }
    else {
        $line =~ tr/atcgATCG/tagcTAGC/;
        $sequence = reverse($line);
    }
}

if (length($sequence) > 0) {
    print($STDOUT $name, "_reverse_complement\n", $sequence, "\n");
}

__END__

use autodie!!

ll. 10-11: By moving to scalars instead of global symbols, it fixed 
all the other problems.  Never use $STDERR/$STDOUT as variable names 
though (unless you know what you're doing).

One point off.
