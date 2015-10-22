#!/usr/bin/env perl

use strict;
use warnings;
use autodie;
use feature 'say';

my $seq = shift || die "Please provide a sequence or file.\n";

open my $fh, '<', $seq;
($seq = join '', <$fh>) =~ s/\s//g;

$seq =~ s/([AG])(AATT[CT])/$1^$2/g;
say $seq;
