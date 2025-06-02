my $x = 45;     # pass this variable to python script
my $python_script = <<"END_PYTHON";
print("Hello from Python!")
x = 43 + $x
print("The value of x is:", x)
END_PYTHON

# Create a temporary Python script file
my $python_script_file = 'temp_script.py';
open(my $python_fh, '>', $python_script_file) or die "Could not open $python_script_file: $!";
print $python_fh $python_script;
close($python_fh);

# Construct the Python command to run the script interactively
my $python_interactive_command = "python -i $python_script_file";

# Execute the Python command
my $out = `$python_interactive_command`;
print "Out===> $out\n";
# Clean up the temporary Python script file
unlink $python_script_file or warn "Could not unlink $python_script_file: $!";
