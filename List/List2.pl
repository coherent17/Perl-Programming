#!/usr/bin/perl

# Something like linspace in numpy
@list1 = (1..10);
print "@list1\n";

# Part of list using ".."
@list2 = (2, 5..9, 11);
print "@list2\n";

# List using floating point
@list3 = (2.1..6.3);
print "@list3\n";

# List using string
@list4 = (aa..ad);
print "@list4\n";

# sort number & string
@numbers = (9, 2, 8, 4, 1);
@names = ("Coherent", "Cheng119", "Jackman");
@sorted_numbers = sort @numbers;
print "@sorted_numbers\n";
@sorted_names = sort @names;
print "@sorted_names\n";
@descent_numbers = reverse sort @numbers;
print "@descent_numbers\n";

# Merge the element of lists into a single string
$str1 = join(" ", "this", "is", "a", "string");
print "$str1\n";
$str2 = join("::", "this", "is", "a", "string");
print "$str2\n";
@ll = ("Here", "is", "a");
$str3 = join(" ", @ll, "string");
print "$str3\n";

# Split the string into array element
$string_to_split = "words::seperated::by::colons";
@arr = split(/::/, $string_to_split);
print "@arr\n";

# split using ""
$chars = "abcdefghijk";
@char_arr = split(//, $chars);
print "@char_arr\n";