#!/usr/bin/env perl

use strict;
use warnings;
use autodie;
use feature 'say';

if (@ARGV != 2){
    die "Please provide two files.\n";
}

my ($file1, $file2) = @ARGV;
open my $fh1, '<', $file1;
open my $fh2, '<', $file2;

my %text1;
while (my $line1 = <$fh1>){
    chomp $line1;
    my @text1 = split /\s+/, $line1;
    for my $word1 (@text1){
	$word1 =~ s/[^A-Za-z0-9]//g;
	$text1 {lc $word1} = 1;
    }
}

my %text2;
while (my $line2 = <$fh2>){
    chomp $line2;
    my @text2 = split /\s+/, $line2;
    for my $word2 (@text2){
        $word2 =~ s/[^A-Za-z0-9]//g;
        $text2 {lc $word2} = 1;
    }
}

my $count = 0;
for my $word1 (sort keys %text1){
    if (exists $text2{$word1}){
	$count++;
	say $word1;
    }
}
say "Found ", $count, " words in common.";
