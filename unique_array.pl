=head2

Write a program that takes an array of integers as input and outputs a new array containing only the unique elements from the input array, maintaining their order of appearance.

=cut

use strict;
use warnings;

sub unique_elements {
    my @input = @_;
    my %hash;
    map{ $hash{$_}++ } @input;

    my @newarr;
    foreach my $a (@input) {
        if ( $hash{$a} == 1 ){
            push(@newarr, $a);
        }
    }

    return @newarr;
}

sub main {
    print "Enter a list of integers separated by spaces: ";
    my $input_line = <STDIN>;
    chomp $input_line;

    my @input_array = split(/\s+/, $input_line);
    my @unique_array = unique_elements(@input_array);

    print "Unique elements: ", join(" ", @unique_array), "\n";
}

main();