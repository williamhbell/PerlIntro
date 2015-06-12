#!/usr/bin/perl -w
#
# W. H. Bell
# A program to demonstrate the usage commands piped into a file input 
# stream

# find files which have been modified in the last 60 minutes and open
# the output as a file input stream.
open(FINDFILE,  "find    ./ -cmin -60 |");

# While there are files returned from the find command
while (<FINDFILE>) {
  chomp;
  if(defined $_) {
    print STDOUT " $_ was in the last 60 minutes.\n";
  }
}
close(FINDFILE);
