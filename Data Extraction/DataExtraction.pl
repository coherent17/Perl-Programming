#!/usr/bin/perl

# extract the date info (ex: 19.2.1896)
$text1 = "I was borned in 19.2.1896 in Taiwan";
($date) = ($text1 =~ /(\d+\.\d+\.\d+)/);
print "$date\n";

#extract the  64.582295
$text2 = "The temperature in lab is 64.582295";
($temp) = ($text2 =~ /(\d{2}\.\d{6})/);
print "$temp\n";