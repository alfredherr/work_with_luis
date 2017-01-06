#!/usr/bin/perl -w

my $counter = 0;
my $file = $ARGV[0];
open(FILE,$file) or die "can't open $file\n";

my $pattern = $ARGV[1]; 
while(<FILE>){
	chomp;
	my @rec = split//;
	foreach $letter (@rec){
		$counter = $counter + 1 if( $letter eq $pattern )
	}
}

print "There are $counter $pattern in the file\n";