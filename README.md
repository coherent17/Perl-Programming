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

# Conditional Statement
*    if elsif <- care no 'e'
*    switch case default -> else
*    enter unless region only if the condition is not true
```perl=
#!/usr/bin/perl

# if-else condition
$salary = 10500;
if($salary > 10000){
    print "Employee is Manager\n";    
}
elsif($salary < 10000){
    print "Employee is a staff\n";
}


# Unless condition
# when the condition is false, then it will enter the unless statement
$ a = 22;
unless($a < 20){
    print("a is greater than 20\n");    
}

# Switch case
use Switch;
$var = 'key1';
@array = (10, 20, 30);
%hash = ('key1' => 10, 'key2' => 20);

switch($var){
    case 10             {print "number is 10\n"}
    case "a"            {print "string is a\n"}
    case [1..10, 42]    {print "number is in dis-continous list\n"}
    case (\@array)      {print "number is in array\n"}
    case (\%hash)       {print "enter in hash\n"}
    else                {print "not found in the cases\n"}
}

```
result
```perl=
Employee is Manager
a is greater than 20
enter in hash
```

# Loops
*    almost same structure in while & for loop
*    until loop: keep looping until meet the criteria
*    foreach loop: same as iterator in c++
```perl=
#!/usr/bin/perl

# While loop
$ a = 10;
while($a < 20){
    print"Value of a: $a\n";
    $a = $a + 1;
}

# For loop
for($a = 10; $a < 20; $a++){
    print"Value of a: $a\n";
}

# Loop over the array
@names = ("A", "B", "C", "D", "E", "F", "G");
$size = @names;
for($i = 0; $i < $size; $i++){
    print "$names[$i]\n";
}

# Until Loop
# repeatedly execute the statemtnt as long as the condition is false
$ a = 5;
until($a > 10){
    print"Value of a: $a\n";
    $a++;
}

# Foreach loop
# iterate through the value instead of the index of the array
@names = ("A", "B", "C", "D", "E", "F", "G");
foreach $name (@names){
    print "$name\n";
}
```

# File I/O
given the file:
```perl=
leader  country Phone   price
trump   America iphone4 600
modi    India   pixel3  500
boris   Britain iphoneX 800
putin   Russia  HTC9    400
imran   Pakstan nokia   20
jinping China   huawei  350
frank   Germany iphone6 700
```

want to calculate the max price of the leader

```perl=
use List::Util qw(min max);

@price;
open($fh, '<', "leaders.rpt");
while($line = <$fh>){
    @data = split(' ', $line);
    #ignore the header of the rpt file
    if($data[-1] != 'price'){
        #push the element into the array
        push(@price, $data[-1]);

        #also store the price -> name hash in leaders
        $name = $data[0];
        $leaders{$data[-1]} = $name;
    }
}

print "@price\n";

# get the max element in the array
$max_price = max @price;
print "$max_price\n";
print "$leaders{$max_price}\n";
```

# Functions
*    To access the arguments inside the function, use the special array @_
*    The first argument to the function is in \$\_[0], the second is \$\_[1]

```perl=
sub Average{
    # get the length of arguments passed in
    $n = scalar(@_);
    $sum = 0;
    foreach $item (@_){
        $sum += $item;
    }
    $average = $sum / $n;
    print "Average is : $average\n";
}

Average(10, 20, 30);

# A function that combine all of the argument into 1 array
sub PrintMyList{
    # "my", make the list scope from global to private
    my @list = @_;
    print "Given list is @list\n";
}

$x = 10;
@y = (1, 2, 3, 4);
PrintMyList($x, @y);
```

result
```perl=
Average is : 20
Given list is 10 1 2 3 4
```

# Hashes
*    Init the hash table using %
*    Insert in the hash table using $

```perl=
#init the hash table (using %)
%leader = ('Modi', India, 'Trump', USA, 'Putin', Russia);
print "\$leader{'Modi'} = $leader{'Modi'}\n";
print "\$leader{'Trump'} = $leader{'Trump'}\n";
print "\$leader{'Putin'} = $leader{'Putin'}\n";

#insert into the hash table (using $)
$leader{'Boris'} = Britian;

#get keys & values of the hash table
@names = keys %leader;
@country = values %leader;
print "@names\n";
print "@country\n";

#iterate through hashes
while(($key, $value) = each %leader){
    print "$key => $value\n";
}
```

result
```perl=
$leader{'Modi'} = India
$leader{'Trump'} = USA
$leader{'Putin'} = Russia
Trump Boris Putin Modi
USA Britian Russia India
Trump => USA
Boris => Britian
Putin => Russia
Modi => India
```

# Grep
*    using grep to filter the data
*    $ end word
*    ^ front word
*    [a-z] the word in alphabetic
*    [\d] the digit
*    ! not something

```perl=
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
```

result
```perl=
Coherent Cheng Jackman
Cheng
Coherent Cheng
Jackman 123 456 789
123 456 789
```

# Pattern Matching

*    Match operator
        *    $&: contains the entire matched string
        *    $\`: contains everything before the matched string
        *    $': contains everything after the matched string

*    Substitution operator(only the first match)
        *    s/pattern/replacement/
*    Transliterate operator(for all match)
        *    s/pattern/replacement/

```perl=
# Split function
$line = "this is a sentence";
@array = split(/ /, $line);
print "@array\n";

# Match operator
# $&: contains the entire matched string
# $`: contains everything before the matched string
# $': contains everything after the matched string
$string = "perl tutorials by VLSI academy";
$string =~ m/by/;
print "Match: $&\n";    #by
print "Before: $`\n";   #perl tutorials
print "After: $'\n";    #VLSI academy

# Substitution operator (only the first match)
# s/pattern/replacement/;
$string = "VLSI Academy is university";
$string =~ s/university/online platform/;
print "$string\n";

# Transliterate operator (for all match)
# tr/pattern/replacement/;
$string = "10001";
$string =~ s/0/9/;
print "$string\n";
$string =~ tr/0/9/;
print "$string\n";
```
result
```perl=
this is a sentence
Match: by
Before: perl tutorials 
After:  VLSI academy
VLSI Academy is online platform
19001
19991
```

# Data Extraction
using regular expression to get the keyword
remember the bracket problem, or the compiler is stupid
```perl=
#!/usr/bin/perl

# extract the date info (ex: 19.2.1896)
$text1 = "I was borned in 19.2.1896 in Taiwan";
($date) = ($text1 =~ /(\d+\.\d+\.\d+)/);
print "$date\n";

#extract the  64.582295
$text2 = "The temperature in lab is 64.582295";
($temp) = ($text2 =~ /(\d{2}\.\d{6})/);
print "$temp\n";
```
result
```perl=
19.2.1896
64.582295
```