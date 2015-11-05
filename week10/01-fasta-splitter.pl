#!/usr/bin/env perl

use strict;
use warnings;
use autodie;
use feature 'say';
use Getopt::Long;
use Pod::Usage;
use Bio::SeqIO;
use Cwd 'cwd';
use Data::Dumper;
use File::Spec::Functions 'catfile';
use File::Basename 'basename';
use File::Path 'make_path';
main();

sub main {
my %opts = get_opts();

if ($opts{'help'} || $opts{'man'}) {
    pod2usage({
        -exitval => 0,
        -verbose => $opts{'man'} ? 2 : 1
    });
}

@ARGV or pod2usage();

my $number  = $opts{'number'} || 500;
my $out_dir = $opts{'out_dir'} || cwd();

unless (-d $out_dir) {
    make_path($out_dir);
}

for my $file (@ARGV) {
    say "file ($file)";
    my $reader = Bio::SeqIO->new(-file => $file, -format => 'Fasta');
    my $count = 0;
    my $nfile = 0;
    my $writer;
    while (my $seq = $reader->next_seq()) {
        $count++; 
	    if (!$writer || $count == $number) {
		$count = 0;
		my $out = catfile ($out_dir, basename($file) . "." . ++$nfile);
		say $out;
		$writer = Bio::SeqIO->new(-file => ">$out",
					  -format => 'Fasta');
	    }

	#say $count, ": ", $seq->id;      
        $writer ->write_seq($seq);
    }   
  }
say "Done.";
}



# --------------------------------------------------
sub get_opts {
    my %opts;
    GetOptions(
         \%opts,
        'number:i',
        'out_dir:s',
        'help',
        'man',
    ) or pod2usage();

    return %opts;
}


__END__

# --------------------------------------------------

=pod

=head1 NAME

01-fasta-splitter.pl - a script

=head1 SYNOPSIS

  01-fasta-splitter.pl -n 10 -o out file1.fa [file2.fa ...]

Options:

    --number  The maxmimum number of sequences per file (500)
    --out_dir Output directory (cwd)
    --help   Show brief help and exit
    --man    Show full documentation

=head1 DESCRIPTION

Describe what the script does, what input it expects, what output it
creates, etc.

=head1 SEE ALSO

perl.

=head1 AUTHOR

Dai Lu Chen E<lt>dailu@email.arizona.eduE<gt>.

=head1 COPYRIGHT

Copyright (c) 2015 dailu

This module is free software; you can redistribute it and/or
modify it under the terms of the GPL (either version 1, or at
your option, any later version) or the Artistic License 2.0.
Refer to LICENSE for the full license text and to DISCLAIMER for
additional warranty disclaimers.

=cut
