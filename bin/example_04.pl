#!/usr/bin/perl
#
# W. H. Bell
# A simple program to illustrate the use of die, unless
# conditional statements.

for (1..5) {
  die "It's time to die." unless ($_<4);
  print STDOUT "$_\n";
}
