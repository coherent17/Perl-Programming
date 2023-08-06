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