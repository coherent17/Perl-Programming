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