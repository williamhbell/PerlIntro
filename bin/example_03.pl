#!/usr/bin/perl
#
# W. H. Bell
# A program demonstrating an if, elsif, else statement.
#

for (1..3) {
  if($_==1) {
    print STDOUT "1, ";
  }
  elsif($_==2) {
    print STDOUT "2, ";
  }
  else {
   print STDOUT "3!\n";
  }
}
