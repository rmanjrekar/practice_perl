package Pets;  # In order to use this, you need 'use pet;' and then create object for Pets package.
use strict;

my $a = 2000;
print __PACKAGE__;
print "\n---\n";
sub new {
    my ($class, $pet_name, $food) = @_;
    my $self = {
        'pet_name' => $pet_name,
        food => $food
    };
    bless $self, $class;
    return $self;
}

sub print_details {
    my ($self, $age) = @_;
    print "Pet Name is ". $self->{pet_name} . " and its age is $age\n";
}

1;

package Wild; # In order to use this, you need 'use pet;' and then create object for Wild package.
print __PACKAGE__;
print "\n---\n";
sub new {
    my ($class, $animal, $food) = @_;
    my $self = {
        'animal_name' => $animal,
        food => $food
    };
    bless $self, $class;
    return $self;
}

sub print_details {
    my ($self, $age) = @_;
    print "====>$a\n";              # Variable declared in package Pets with 'my' scope is accessible in package 'Wild'
    print "Animal Name is ". $self->{animal_name} . " and its age is $age\n";
}

1;