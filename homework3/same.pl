#!/usr/bin/perl
use strict;
use warnings;

my $string1=$ARGV[0];
my $string2=$ARGV[1];

if (lc($string1) eq lc($string2)){
    print "same\n";
}
else {
    print "different\n";
}
