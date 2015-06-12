#!/usr/bin/perl -w
#
# W. H. Bell
# A program demonstrating usage of command line arguments.
#

$numArgs = $#ARGV + 1;
print STDOUT "\n $0 with $numArgs command-line arguments\n\n ";

foreach $argnum (0 .. $#ARGV) {
   print STDOUT "\$ARGV[$argnum] = $ARGV[$argnum], ";
}

print STDOUT "\n\n";
