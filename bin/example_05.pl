#!/usr/bin/perl
#
# W. H. Bell
# A simple script to demonstrate basic function usage.
#

printStrings(1,2,3);

#----------------------------------------------

sub printStrings {
  my ($a, $b, $c) = @_;

  print STDOUT "a=$a, b=$b, c=$c\n";
}

