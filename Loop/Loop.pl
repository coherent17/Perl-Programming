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