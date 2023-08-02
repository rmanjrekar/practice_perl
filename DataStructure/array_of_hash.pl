use strict;
use warnings;
use Data::Dumper;

my @AoH = (
    {
       husband  => "barney",
       wife     => "betty",
       son      => "bamm bamm",
    },
    {
       husband => "george",
       wife    => "jane",
       son     => "elroy",
    },
    {
       husband => "homer",
       wife    => "marge",
       son     => "bart",
    },
);

foreach my $i ( 0 .. $#AoH ) {
    print "index $i has { \n";
    foreach my $role ( keys %{ $AoH[$i] } ) {
        print "$role=$AoH[$i]{$role}\n";
    }
    print "}\n";
}

delete $AoH[1]{husband};            # deletes key 'husband' from 1st Index    
delete $AoH[0];                     # deletes 0th index and makes it undef
print Dumper \@AoH;

my $aref = \@AoH;
print "$aref->[2]{wife}\n";         # Accessing the element on arrayref
