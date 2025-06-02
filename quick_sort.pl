use Data::Dumper;
sub quick_sort {
    my @array = @_;
    return @array if @array <= 1;  # Base case: If the array has 0 or 1 elements, it's already sorted.

    my $pivot = shift @array;  # Choose a pivot element

    my @less = grep { $_ < $pivot } @array;
    my @greater = grep { $_ >= $pivot } @array;

    return (quick_sort(@less), $pivot, quick_sort(@greater));
}

my @unsorted_array = (38, 27, 86, 43, 3, 9, 82, 88, 10);
my @sorted_array = quick_sort(@unsorted_array);
print "Sorted array: " . Dumper \@sorted_array;