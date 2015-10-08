#!/usr/bin/env perl

use strict;
use warnings;
use autodie;

@ARGV or die 'Please provide a list of numbers.';

my $sum_evens = 0;
my $sum_odds = 0;

foreach my $n(@ARGV) {
    if ($n % 2 == 0){
	$sum_evens += $n;
    }
    else 
    {
	$sum_odds += $n;
    }
}
print "sum evens = $sum_evens\n";
print "sum odds = $sum_odds\n";
