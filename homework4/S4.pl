
#!/usr/bin/perl
 
use strict;  
use warnings;

use autodie;

my $file = shift || 'Perl_III.fastq.txt';
open my $fh, '<', $file;
my $num_line=0;
my $num_char=0;

while (my $line = <$fh>){
    $num_line++;
    $num_char += length($line);
}
my $ave_length = $num_char / $num_line;

print "Total number of lines is $num_line\n";
print "Total number of characters is $num_char\n";
print "The average line length is $ave_length\n";
