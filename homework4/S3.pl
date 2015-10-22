#!/usr/bin/perl 

use strict;
use warnings;

open my $fh, '<', 'Perl_III.fasta.txt';

while (my $line =<$fh>){
    chomp $line;
    if (substr($line,0,1) eq '>'){
	say "$line (revcomp)";
    }
    else {
	$line = reverse $line;
	$line =~ tr/ATCG



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

