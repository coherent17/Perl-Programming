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