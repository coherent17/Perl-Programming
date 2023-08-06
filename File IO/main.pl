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