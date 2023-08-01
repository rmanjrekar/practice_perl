=head2

The Fibonacci series is the sequence of numbers (also called Fibonacci numbers), where every number is the sum of the preceding two numbers, such that the first two terms are '0' and '1'.
A Fibonacci series can thus be given as 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, . . . It can thus be observed that every term can be calculated by adding the two terms before it.
Given the first term, F0 and second term, F1 as '0' and '1' respectively, the third term here can be given as, F2 = 0 + 1 = 1

Similarly,
F3 = 1 + 1 = 2
F4 = 2 + 1 = 3
F5 = 2 + 3 = 5
F6 = 3 + 5 = 8
and so on

Here we are printing the fibonacci series and the value of fibonacci at the input term.

=cut

use strict;
use warnings;

sub fibonacci {
    my $n = shift;
    if ($n < 0) {
        print "Incorrect input";
        exit;
    } elsif ($n <= 1) {
        return $n;
    } else {
        return &fibonacci($n - 1) + &fibonacci($n - 2);
    }
}

sub main {
    print "Enter the number : ";
    my $number = <>;
    chomp($number);
    my $output = "";
    foreach (0 .. $number - 1) {
        my $result = &fibonacci($_);
        $output = $output . "$result " ;
    }
    print "Fibonacci series till $number : $output\n"; 
    print "Fibonacci of $number : " . &fibonacci($number);
}

&main();