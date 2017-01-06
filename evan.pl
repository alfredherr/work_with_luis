#!/usr/bin/perl -w

my $counter = 0;
while(<>){
	chomp;
	my @rec = split//;
	foreach $letter (@rec){
		$counter = $counter + 1 if( $letter eq '0' )
	}
}

print "There are $counter 0s in the file\n";