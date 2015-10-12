#!/usr/bin/env perl

use strict;
use warnings;
use autodie;

@ARGV or die "Please provide a sequence.\n";

for my $sequence (@ARGV) {
    my @sequence = split (//,$sequence);
    my $len = 0;
    my $GC_count = 0;

    foreach my $nt (@sequence){
        if ((lc($nt) eq "c") || (lc($nt) eq "g")){
        $GC_count++;
        }
        $len++;
    }
    print "Length: ", $len, "\n";
    print "#GC :", $GC_count, "\n"; 
    my $percent_GC = ($GC_count/$len)*100;
    print "%GC :", $percent_GC, "\n";
}

__END__

Fails to handle multiple inputs.  

One point off.
