#!/usr/bin/perl
#
# W. H. Bell
# A program to demonstrate substitution.
#

@al = ('a','b','c','d','e','f','g','h','i','j','k','l','m','n',
       'o','p','q','r','s','t','u','v','w','x','y','z');

@AL = ('A','B','C','D','E','F','G','H','I','J','K','L','M','N',
       'O','P','Q','R','S','T','U','V','W','X','Y','Z');

open(LISTOF,"ls |");

while (<LISTOF>) {
  chomp;
  if(defined $_) {
    $i = 0;
    while ($i<26) {
      s/$al[$i]/$AL[$i]/g;
      $i = $i + 1;
    }
    print STDOUT "$_\n";
  }
}
close(LISTOF);
