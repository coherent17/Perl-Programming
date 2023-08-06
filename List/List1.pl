#!/usr/bin/perl

# Declaring a list
@names = (Coherent, Cheng119, Jackman);

# Accessing list element
print "$names[1]\n";

# Accessing the last element of the list
print "$names[-1]\n";

#Slicing list
@chars = (a, b, c, d, e, f, g, h);

#perform the deep copy to the new array
@new_chars[0, 1, 2] = @chars[1, 3, 5];
@new_chars[0] = z;
print "$new_chars[0]\n";
print "$chars[1]\n";
print "@chars\n";
print "@new_chars\n";