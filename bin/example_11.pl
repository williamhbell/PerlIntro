#!/usr/bin/perl -w
#
# W. H. Bell
# A program to demonstrate using an anchor and decimal and word.

open(FILELIST,  "ls |");

while ($file = <FILELIST>) {
  chomp($file);
  if(defined $file) {
    if($file =~ /^ex\d.[\w]/) {
      print STDOUT " $file \n";
    }
  }
}
close(FILELIST);
