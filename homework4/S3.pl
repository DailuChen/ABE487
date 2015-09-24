#!/usr/bin/perl 

use strict;
use warnings;

my $infasta = 'Perl_III.fasta.txt';
my $outfasta = 'Perl_III.fasta.out';

open (STDIN, '<', $infasta) or die "cannot read fastain: $!\n";
open (STDOUT,'>',$outfasta) or die "Cannot write to fastaout: $!\n";

my $name;
my $sequence = '';

while (my $line = <STDIN>) {
    chomp $line;
    if ($line =~ /^>/) {
     
	if (length($sequence) >0) {
	print (STDOUT $name, "_reverse_complement\n", $sequence, "\n");
	$sequence = '';
	}

	$name = $line;
    }
    else {
	$line =~ tr/atcgATCG/tagcTAGC/;
	$sequence = reverse($line);
    }
}
if (length($sequence) >0) {
    print (STDOUT $name, "_reverse_complement\n", $sequence, "\n");
}

