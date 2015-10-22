#!/usr/bin/env perl

use strict;
use warnings;
use autodie;
use feature 'say';


my $in = join '', <>;

say join "\n", sort { length($a) <=> length($b) } split (/\^/, $in);
