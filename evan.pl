#!/usr/bin/perl -w

my $times_pattern_was_found = 0;
my $file = $ARGV[0];
my $pattern = $ARGV[1]; 

open(FILE,$file) or die "can't open $file\n";

while(my $line = <FILE>){
	chomp $line;
	my @rec = split/\,/, $line;
	foreach $word (@rec){
		if( $word eq $pattern ){
			#increment my counter
			$times_pattern_was_found = $times_pattern_was_found + 1; 
		}
	}
}

print "There are $times_pattern_was_found $pattern in the file\n";
