#!/usr/bin/env perl

use strict;
use warnings;
use autodie;
use feature 'say';
use Data::Dumper;


my %cities = (
    'Tucson' => 'AZ',
       'Boston' => 'MA',
          'Jackson' => 'MS',
          'Dixon' => 'NM',
          'Denton' => 'TX',
          'Cincinnati' => 'OH'    
   );
say Dumper(\%cities);

my $num;
foreach my $city (sort keys %cities){
   
    my $state = $cities{$city};
    $num++;  
    print $num, ': ', $city,', ',"$state\n";
}
