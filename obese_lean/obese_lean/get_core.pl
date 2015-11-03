#!/usr/bin/perl
 
use strict;  
use warnings;
use autodie;
use feature 'say';

if (@ARGV != 4){
    die "Please provide four files.\n";
}

my (%keggfile);
for my $file (@ARGV) {
    open my $fh, '<', $file;

    while (my $line = <$fh>) {
        chomp $line;
        my ($kegg_id, $n_match) = split(/,/, $line);
        next unless $n_match >= 50;
        $keggfile{ $kegg_id }++;
    }
}

my $nfiles = scalar(@ARGV);

open my $core_fh, '>', 'core';

say $core_fh join "\n", 
    grep { $keggfile{$_} == $nfiles } sort keys %keggfile;

