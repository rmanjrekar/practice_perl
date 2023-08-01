=head2

Prime numbers are the numbers that have only two factors, that are, 1 and the number itself. Consider an example of number 5, which has only two factors 1 and 5. This means it is a prime number.
Let us take another example of the number 6, which has more than two factors, i.e., 1, 2, 3, and 6. This means 6 is not a prime number.
Here we are generating the prime number till the input number.

=cut

sub prime_gen {
    my $n = shift;
    my @primes;
    for my $num (2 .. $n) {
        if (&check_prime($num, int(sqrt($num)))) {
            push @primes, $num;
        }
    }
    return @primes;
}

sub check_prime {
    my ($number, $divisor) = @_;

    if ($number <= 1) {
        return 0;
    }

    if ($divisor == 1) {
        return 1;
    }

    if ($number % $divisor == 0) {
        return 0;
    }

    return &check_prime($number, $divisor - 1);
}

sub main {
    print "Enter the number to get Prime Numbers up to : ";
    my $number = <>;
    chomp($number);
    my @prime_numbers = &prime_gen($number);
    print "Prime numbers up to $number : @prime_numbers\n";
}

&main();