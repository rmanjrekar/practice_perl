use strict;
use warnings;
use Data::Dumper;

my %fruits = (
    apple => "red",
    banana => "yellow",
    orange => "orange"
);

my @fruit_names = keys %fruits;         # returns all keys of hash 
my @fruit_colors = values %fruits;      # returns all values of hash

while (my ($fruit, $color) = each %fruits) {        
    print "$fruit is $color\n";
}

if (exists $fruits{"banana"}) {         # Checks if key exists in hash
    print "Banana exists in the hash.\n";
} else {
    print "Banana does not exist in the hash.\n";
}

$fruits{'Mango'} = 'Yelo';              # Add new key-value pair to hash
$fruits{'Mango'} = 'Yellow';            # update the key to new value 
delete $fruits{'Mango'};                # To remove a key value pair from a hash
print Dumper \%fruits;
%fruits=();                             # Empty the hash

print "\n=======\n";

my %hash = (
    'John'   => 35,
    'Alice'  => 28,
    'Bob'    => 42,
    'David'  => 31,
    'Emily'  => 24
);

# Sorting the hash based on values in descending order, for numeric value use '<=>'
my @sorted_keys = sort { $hash{$b} <=> $hash{$a} } keys %hash;
# Printing the sorted hash
foreach my $key (@sorted_keys) {
    print "$key: $hash{$key}\n";
}

print "\n=======\n";

# Sorting the hash based on keys in descending order, for alpha use 'cmp'
@sorted_keys = sort { $b cmp $a } keys %hash;

# Printing the sorted hash
foreach my $key (@sorted_keys) {
    print "$key: $hash{$key}\n";
}

print "\n=======\n";

# Sorting the hash based on values in ascending order, for numeric value use '<=>'
@sorted_keys = sort { $hash{$a} <=> $hash{$b} } keys %hash;
# Printing the sorted hash
foreach my $key (@sorted_keys) {
    print "$key: $hash{$key}\n";
}

print "\n=======\n";

# Sorting the hash based on keys in ascending order, for alpha use 'cmp'
@sorted_keys = sort { $a cmp $b } keys %hash;

# Printing the sorted hash
foreach my $key (@sorted_keys) {
    print "$key: $hash{$key}\n";
}

print "\n=======\n";

# Sorting the hash based on keys in descending order
foreach my $v (reverse sort keys %hash){
    print "$v===$hash{$v}\n";
}

print "\n=======\n";

# Sorting the hash based on keys in ascending order
foreach my $v (sort keys %hash){
    print "$v===$hash{$v}\n";
}

print "\n=======\n";

# Sorting the hash based on values in descending order, prints value in descending order
foreach my $v (reverse sort values %hash){
    print "$v\n";
}

print "\n=======\n";

# Sorting the hash based on values in ascending order, prints value in ascending order
foreach my $v (sort values %hash){
    print "$v\n";
}

print "\n=======\n";

# To get the size of a hash, simply call the keys function in a scalar context
my $count =  keys %hash;
print "$count\n";