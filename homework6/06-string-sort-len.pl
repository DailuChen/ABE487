#!/usr/bin/env perl

use strict;
use warnings;
use autodie;

@ARGV or die 'Please provide a list of sequences.';

my @sorted = sort {length($a) <=> length($b)} @ARGV;
print "sorted = ", join (',', @sorted), "\n";

my @reverse = sort {length($b) <=> length($a)} @ARGV;
print "reverse = ", join (',', @reverse), "\n";

