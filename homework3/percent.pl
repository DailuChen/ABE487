#!/usr/bin/perl
use strict;
use warnings;

my $i=shift;
my $j=shift;

if ($i + $j != 0) {
    printf "%.2f%%\n", $i / ($i + $j) * 100;
}
else {
    print "You are trying to trick me!\n";
}
