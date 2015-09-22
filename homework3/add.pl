#!/usr/bin/perl
use strict;
use warnings;

my $x= $ARGV[0];
my $y= $ARGV[1];
unless (defined $x and defined $y){
die "Please provide two numbers.\n";
}
if ($x>=0 and $y>=0){
my $total=$x+$y;
print "$total\n";
}
else {
print "Please provide two positive numbers.\n"
}
