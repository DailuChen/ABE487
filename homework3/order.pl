#!/usr/bin/perl
use strict;
use warnings;

my $name1=$ARGV[0];
my $name2=$ARGV[1];

if ($name1 lt $name2){
    print "right order\n";
}
else {
    print "wrong order\n";
}
