#!/usr/bin/env perl

use strict;
use warnings;
use autodie;
use feature 'say';

my $input = shift || die "Please provide a word or phrase.\n";
$input =~ s/[^A-Za-z0-9]//g;

if (lc ($input) eq lc (reverse $input)) {
    say "Yes";
}
else {
    say "No";
}
