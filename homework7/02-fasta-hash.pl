#!/usr/bin/env perl

use strict;
use warnings;
use autodie;
use feature 'say';

my $file = shift || 'Perl_V.genesAndSeq.txt';
open my $fh, '<', $file;
my %sequences;

my $new_id;
my $seq;
my @seqarray;

while (my $line = <$fh>){
    chomp $line;
    
    if ($line =~ /^>/){
    my @idarray = split (//, $line);
    shift @idarray;
    $new_id = join ('', @idarray);
    @seqarray = ();
}
    else {
    push @seqarray, $line;
    $seq = join ('', @seqarray);
    }
    $sequences{$new_id} = $seq;
}
foreach $new_id (sort {length($sequences{$a}) <=> length($sequences{$b})} keys %sequences){
    my $len = length($sequences{$new_id});
    say "$new_id: $len";
}

