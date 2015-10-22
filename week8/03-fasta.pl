#!/usr/bin/env perl

use strict;
use warnings;
use autodie;
use feature 'say';

my $file = shift || die "Please provide a FASTA file.\n";
open my $fh, '<', $file;

my $count = 0;
while (my $line = <$fh>) {
    chomp $line;
    if ($line =~ /^>(.+)/) {
	my $header = $1;
	$count++;
	say "$count: $header";
    }
}

printf "Found %s sequence%s.\n", $count, ($count == 1) ? '' : 's';

__END__
	if ($count ==1) {
	    say "Found 1 sequence.";
	}
	else {
	    say "Found $count sequences.";
	}
}
