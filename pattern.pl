=pattern Right Angle Triangle

* 
* *
* * *
* * * *
* * * * *

=cut

my $number = 5;
foreach (1 .. $number) {
    print "* " x $_;
    print "\n";
}

=pattern Triangle

      *
     * *
    * * *
   * * * *
  * * * * *
 * * * * * *

=cut

my $num = 6;
foreach (1 .. $num) {
    print " " x $num . "* " x $_;
    print "\n";
    $num--;
}


=pattern Reverse Triangle

 * * * * * *
  * * * * *
   * * * *
    * * *
     * *
      *

=cut

my $num = 6;
foreach (1 .. $num) {
    print " " x $_ . "* " x $num;
    print "\n";
    $num--;
}

=pattern

1
12
123
1234
12345

=cut

my $number = 5;
my $str = "";
foreach (1 .. $number) {
    $str = $str . "$_";
    print $str;
    print "\n";
}

=pattern

1
2 3
4 5 6
7 8 9 10
11 12 13 14 15

=cut

my $number = 5;
my $str = 1;
foreach (1 .. $number) {
    my $line = "";
    foreach (1 .. $_) {
        $line =  $line . $str . " ";
        $str++;
    }
    print "$line\n";
}
