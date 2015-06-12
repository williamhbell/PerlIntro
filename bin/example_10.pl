#!/usr/bin/perl -w
#
# W. H. Bell
# A script to demonstrate pattern matching with regular expressions.

open(FILELIST,  "ls |");

while ($file = <FILELIST>) {
  chomp($file);
  if(defined $file) {
    if($file =~ /ex[1-4]\.pl/) {
      print STDOUT " $file \n";
    }
  }
}
close(FILELIST);
