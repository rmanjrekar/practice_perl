=head2 

Write a program that checks whether two given strings are anagrams of each other. 
An anagram of a string is another string that contains the same characters, only the order of characters can be different. 
For example, "abcd" and "dabc" are an anagram of each other.

=cut

use strict;
use warnings;

sub is_anagram {
    my ($str1, $str2) = @_;
    $str1 =~ s/\s//g;  # Remove spaces
    $str2 =~ s/\s//g;  # Remove spaces

    return join("", sort(split(//, lc($str1)))) eq join("", sort(split(//, lc($str2))));
}

sub main {
    print "Enter the first string: ";
    my $str1 = <STDIN>;
    chomp $str1;

    print "Enter the second string: ";
    my $str2 = <STDIN>;
    chomp $str2;

    if (is_anagram($str1, $str2)) {
        print "The strings '$str1' and '$str2' are anagrams.\n";
    } else {
        print "The strings '$str1' and '$str2' are not anagrams.\n";
    }
}

main();