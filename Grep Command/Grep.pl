@names = ('Coherent', 'Cheng', 'Jackman', 123, 456, 789);

# only grep the name in a~z
@grepNames = grep(/[a-z]$/, @names);
print "@grepNames\n";

# only grep the name that end with g
@grepNames = grep(/g$/, @names);
print "@grepNames\n";

#only grep the name that start with C
@grepNames = grep(/^C/, @names);
print "@grepNames\n";

#only grep the name that "not" start with C
@grepNames = grep(!/^C/, @names);
print "@grepNames\n";

#only grep the name only contains digit
@grepNames = grep(/\d/, @names);
print "@grepNames\n";