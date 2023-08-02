use strict;
use warnings;
use Data::Dumper;

my %HoH = (
    flintstones => {
        husband   => "fred",
        pal       => "barney",
    },
    jetsons => {
        husband   => "george",
        wife      => "jane",
        "his boy" => "elroy",  # Key quotes needed.
    },
    simpsons => {
        husband   => ["homer","Jean","Kenny"],
        wife      => "marge",
        kid       => "bart",
    },
);

print "$HoH{jetsons}{husband}\n";
print "$HoH{jetsons}{'his boy'}\n";         # quotes needed to access 'his boy' key
print $HoH{simpsons}{husband}[0];
#delete $HoH{"simpsons"}{"husband"};        # deletes entire husband from simpsons
delete $HoH{"simpsons"}{"husband"}[1];      # deletes 'jean' from array 'husband' making it undef for '1' index of array
delete $HoH{"simpsons"}{"husband"}[0];      # deletes 'homer' from array 'husband' making it undef for '0' index it will still have 3 elements due to autovivification in perl

#delete $HoH{"simpsons"}{"husband"}[2];      # After deleting the last element, the array will be empty
print Dumper \%HoH; 

foreach my $k1 (keys %HoH) {		
    print "$k1\n";
    foreach my $k2 (keys %{$HoH{$k1}}) {
        print "$k2 => $HoH{$k1}{$k2}\n";
    }       
}

my $href = \%HoH;                               # referencing the hash
print "$href->{'flintstones'}{'husband'}\n";    # Accessing the element on hashref
print "$href->{'simpsons'}{'husband'}[2]\n";  