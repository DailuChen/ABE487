#!/usr/bin/env perl

use strict;
use warnings;

@ARGV or die 'No input';

while (my $line = <>) {
    my $Nobody   = index($line, 'Nobody');
    my $somebody = index($line, 'somebody');
    if ($Nobody >= 0) {
        warn("Nobody is here: $Nobody\n");
    }
    if ($somebody >= 0) {
        warn("somebody is here: $somebody\n");
    }

}

__END__

l. 6: Give the user some indication what to do.
