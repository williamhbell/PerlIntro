#!/usr/bin/perl
#
# W. H. Bell
# A program to demonstrate dynamic array management
#

$runfile="run_numbers.txt";
die ("Can't open $runfile for reading\n")
  unless open(RUNFILE, "< $runfile");

my @run_numbers;
print STDOUT "\@run_numbers last index=";
while ($run = <RUNFILE>) {
  chomp($run);
  push(@run_numbers,$run);
  print STDOUT "$#run_numbers... ";
}
print STDOUT "\n\n";

print STDOUT "Run Numbers\n";
while ($#run_numbers>=0) {
  $run=shift(@run_numbers);
  print STDOUT "$run\n";
}
print STDOUT "\n";

print STDOUT "\@run_numbers size=$#run_numbers\n";
