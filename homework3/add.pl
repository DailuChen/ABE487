#!/usr/bin/perl

use strict;
use warnings;
use feature 'say';

my ($x, $y) = @ARGV;

unless (defined $x && defined $y) {
    die "Please provide two numbers.\n";
}

if ($x >= 0 && $y >= 0) {
    say $x + $y;
}
else {
    print "Please provide two positive numbers.\n";
}
