#!/usr/bin/env perl

use strict;
use warnings;
use autodie;

@ARGV or die 'Please provide a list of numbers.';

my @default_sort = sort @ARGV;
print "default sort = ", join (',', @default_sort), "\n";

my @numerical_sort = sort {$a <=> $b} @ARGV;
print "numerical sort = ", join (',', @numerical_sort), "\n";

my @reverse_sort = sort {$b <=> $a} @ARGV;
print "reverse numerical sort = ", join (',', @reverse_sort), "\n";
