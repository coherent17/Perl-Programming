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
