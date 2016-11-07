#!/usr/bin/env perl
# you may use this script to pretty-print output when running bin/cluster with '-vvvvv' or however many v's you want

use strict;
use warnings;

my $line;
while (<>) {
	$line = $_;
	$line =~ s/( -)(?!-)/\n    $1/g;
        $line =~ s/,/,\n\t/g;
        $line =~ s/(?<!-)>\s*(?=\w)/>\n  /gi;
	$line =~ s/^\s{,4}(?<!\w)</\n</g;
	$line =~ s/\\n/\t\n/g;
	$line =~ s/\\t/\t/g;
	$line =~ s/\\"/"/g;
	$line =~ s/\\r\s*\n/\n/g;
	$line =~ s/\n\s*\n+/\n/gm;
	$line =~ s/^([^\S])/  $1/g;
	$line =~ s/^</\n</;
	
	print "$line";
}





#        $line =~ s/>\s*(?=\w)/>\n  /g;
#	 $line =~ s/(\(+)/\n\t$1/;
#        $line =~ s/^([a-z,_'-]+?:)/\n$1/;

