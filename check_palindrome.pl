=head2

Write a program that checks whether a given string is a palindrome or not. 
A palindrome is a string that reads the same backward as forward.

=cut

use strict;
use warnings;

sub is_palindrome {
    my ($word) = @_;
    $word =~ s/[^a-zA-Z0-9]//g;     
    return lc($word) eq lc(reverse $word);
}

sub main {
    print "Enter a string to check : ";
    my $input_word = <STDIN>;
    chomp $input_word;

    if (is_palindrome($input_word)) {
        print "The input string '$input_word' is a palindrome.\n";
    } else {
        print "The input string '$input_word' is not a palindrome.\n";
    }
}

main();
