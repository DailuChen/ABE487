#!/usr/bin/perl                                            

use strict;
use warnings;
use autodie;

my @array = (101, 2, 15, 22, 95, 33, 2, 27, 72, 15, 52);
print "array = ", join (',', @array, "\n");

my $popped = pop @array;
print "popped = ", $popped, ', ', "array = ", join (',', @array, "\n");

my $shifted = shift @array;
print "shifted = ", $shifted, ', ', "array = ", join (',', @array, "\n");

push (@array, 12);
print "after push, array = ", join (',', @array,"\n");

unshift (@array, 4);
print "after unshift, array = ", join (',', @array,"\n");


