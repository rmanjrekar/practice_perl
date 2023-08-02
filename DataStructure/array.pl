use strict;
use warnings;
use Data::Dumper;

my (@arr) = ('Mike',1,2,'Andy','4');
foreach my $n (@arr) {
    print "$n\n";
}
print "Length of Array " . scalar @arr;
print "\nLast Index of Array " . $#arr;
print "\nValue at 3rd index " . $arr[3];

# Adding an element at the end of array
push (@arr, 'Joe');
print "\nAfter push array elements : @arr";

# Adding an element from the end of array
pop(@arr);
print "\nAfter pop array elements : @arr";

# Adding an element at the start of array
unshift(@arr, "Kite");
print "\nAfter unshift array elements : @arr";

# Removing an element from the start of array
shift(@arr);
print "\nAfter shift array elements : @arr";

splice @arr, 1, 2, "David", "James"; # Replace 2 elements starting from index 1 with "David" and "James"
print "\nAfter splicing array elements : @arr";

my $str = join(",", @arr); 
print "\n$str\n";

my @reversed = reverse @arr; # @reversed contains (4, 3, 2, 1)
print "After reverse array elements : @reversed\n";

my @numbers = (1, 2, 3, 4, 5);
my @even_numbers = grep { $_ % 2 == 0 } @numbers; 
print "Even Number : @even_numbers\n";

my @squared = map { $_ * $_ } @numbers;
print "Square numbers : @squared\n";

$arr[6] = 'John';   # autovivification, as we have assigned 6th position value, value at 5th position is auto assigned as 'undef'.
print Dumper \@arr;