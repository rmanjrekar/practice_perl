use pet;

my $obj = Wild->new('King', 'Tiger food');
$obj->print_details(4);

my $obj1 = Pets->new('Alex', 'Cat food');
$obj1->print_details(4);

# we can have different filename and package name, only thing you need to make sure is
# while importing you need to give filename and while creating object you need to give package name.
# you can start the module/filename with '_', small case as well.