#!/usr/bin/perl

use strict;
use warnings;
use feature 'say';

my $x = $ARGV[0];
my $y = $ARGV[1];

my $error = "err.txt";
my $d = "out.txt";

unless (defined $x and defined $y){
    die "Two numbers are required.\n";
}
 
if ($x < 0 or $y <0){
    die "The numbers have to be positive.\n";
} 
elsif ($y == 0){
   die "The divisor cannot be zero.\n";
}
else {
    my $d = $x/$y;
    say $d;
}
