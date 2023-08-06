[TOC]
# Introduction to Perl
*    Only 3 types:
        *    Scalar (start with $)
        *    Array (start with @)
        *    Hashes (start with %)

*    Basic Hello World program
```perl=
#!/usr/bin/perl
print "Hello World\n";
```

# Variable In Perl
*    Scalar
The variable name must start with $

```perl=
#!/usr/bin/perl

$employee_name = "Coherent";
$employee_age = "20";
$employee_salary = "3.14";

print "Name = $employee_name\n";
print "Age = $employee_age\n";
print "Salary = $employee_salary\n";
```

result:
```perl=
Name = Coherent
Age = 20
Salary = 3.14
```

The scalar variable in perl will automatically assign a correct type to the variable

*    Array
The variable name must start with @
The element in array should be treated as scalar.

```perl=
#!/usr/bin/perl

@names = ("Coherent", "Cheng119", "Jackman");
@ages = (20, 21, 22);

print "\$names[0] = $names[0]\n";
print "\$names[1] = $names[1]\n";
print "\$names[2] = $names[2]\n";

print "\$ages[0] = $ages[0]\n";
print "\$ages[1] = $ages[1]\n";
print "\$ages[2] = $ages[2]\n";
```

result:
```per=
$names[0] = Coherent
$names[1] = Cheng119
$names[2] = Jackman
$ages[0] = 20
$ages[1] = 21
$ages[2] = 22
```

*    Hashes
The variable name must start with %
Same as the dict key value structure in python
```perl=
#!/usr/bin/perl

%data = ('Coherent', 20, 'Cheng119', 21, 'Jackman', 22);

print "\$data{'Coherent'} = $data{'Coherent'}\n";
print "\$data{'Cheng119'} = $data{'Cheng119'}\n";
print "\$data{'Jackman'} = $data{'Jackman'}\n";
```

result
```perl=
$data{'Coherent'} = 20
$data{'Cheng119'} = 21
$data{'Jackman'} = 22
```

# String Operation

*    String concatenate
```per=
#!/usr/bin/perl

# string concatenate
$string1 = "Apple";
$string2 = "Pen";
$string_concat = $string1 . $string2;
print "$string_concat\n";
```

result
```per=
ApplePen
```

*    String multiply
```perl=
#!/usr/bin/perl
# string multiply
$stringvar = "abc";
$stringvar_double = $stringvar * 2;
print "$stringvar_double\n";
```

result
```perl=
0
```
Since there is no any digit in stringvar "abc", therefore the compiler will treat the string as 0

*    Alphanumeric string multiply
```per=
#!/usr/bin/perl
# alphanumeric string multiply
$string_numeric = "12p1";
$string_numeric_double = $string_numeric * 2;
print "$string_numeric_double\n";
```

result
```perl=
24
```

The result comes from multiply the first seen number in the string, therefore 12 * 2 = 24

*    String Increment
```perl=
#!/usr/bin/perl
# string increment
$str1 = "abc";
$str1++;
print "$str1\n";

$str2 = "z";
$str2++;
print "$str2\n";
```
result
```perl=
abd
aa
```

*    String repeat
```perl=
#!/usr/bin/perl
# string repeat
$str_repeat = "t" x 5;
print "$str_repeat\n";
```
result
```perl=
ttttt
```

# List
```perl=
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
```

result
```perl=
Cheng119
Jackman
z
b
a b c d e f g h
z d f
```

```per=
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
```

result
```perl=
1 2 3 4 5 6 7 8 9 10
2 5 6 7 8 9 11
2 3 4 5 6
aa ab ac ad
1 2 4 8 9
Cheng119 Coherent Jackman
9 8 4 2 1
this is a string
this::is::a::string
Here is a string
words seperated by colons
a b c d e f g h i j k
```