#!/usr/bin/env perl

use strict;
use warnings;
use autodie;
use feature 'say';

my $sequence = shift || die "Please provide a sequence.\n";

if ( -e $sequence ) {
    open my $fh, '<', $sequence;
    $sequence = join '', <$fh>;
}

unless ($sequence) {
    die "Zero-length sequence.\n";
}

my $k_size = shift || 3;
if ( length($sequence) < $k_size ) {
    die "Cannot get any $k_size mers from a sequence of length ",
      length($sequence), "\n";
}

my $n_k = length($sequence) - $k_size + 1;

my %kmers;
my $kmer;
for ( my $i = 0 ; $i < $n_k ; $i++ ) {
    $kmer = substr( $sequence, $i, $k_size );
    $kmers{$kmer}++;
}

my $uni_k = scalar( keys %kmers );
my $n_single = scalar( grep { $_ == 1 } values %kmers );

printf "%-15s %10s\n", "Sequence length", length($sequence);
printf "%-15s %10s\n", "Mer size",        $k_size;
printf "%-15s %10s\n", "Number of kmers", $n_k;
printf "%-15s %10s\n", "Unique kmers",    $uni_k;
printf "%-15s %10s\n", "Num. singletons", $n_single;

if ( $n_single < $uni_k ) {
    my $i = 0;
    say "Most abundant";
    foreach my $kmer (
        sort { $kmers{$b} <=> $kmers{$a} || $a cmp $b }
        keys %kmers
    ) {
        my $uni_k = $kmers{$kmer};
        if ( $uni_k > 1 ) {
            $i++;
            say $kmer, ': ', $uni_k;
            last if $i >= 10;
        }
    }
}
