#!/usr/bin/env perl

use strict;
use warnings;
use autodie;

@ARGV or die "Please provide a list of sequences.\n";

#my @sorted = sort {$a cmp $b} @ARGV; # this is the default sort
my @sorted = sort @ARGV;
print "sorted = ", join (', ', @sorted), "\n";

my @reverse = sort {$b cmp $a} @ARGV;
print "reverse = ", join (', ', @reverse), "\n";
