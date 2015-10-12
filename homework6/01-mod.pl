#!/usr/bin/env perl

use strict;
use warnings;
use autodie;

@ARGV or die "Please provide a list of numbers.\n";

my @evens = ();

for my $n (@ARGV) {
    if ($n % 2 == 0) {
        push @evens, $n;
    }
}

print "evens = ", join (',', @evens), "\n";
