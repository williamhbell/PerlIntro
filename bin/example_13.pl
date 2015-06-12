#!/usr/bin/perl
#
# W. H. Bell
# A program to demonstrate the split and join.
#

$tabfile = "test.txt";

$cvsfile = $tabfile;
$cvsfile =~ s/\.txt/\.cvs/;

die ("Can't open $tabfile for reading\n")
  unless open(TABFILE, "< $tabfile");

die ("Can't open $cvsfile for writing\n")
  unless open(CVSFILE, "> $cvsfile");

while (<TABFILE>) {
  chomp;
  if(defined $_) {
    @data = split(/\t/,$_);
    $data_line = join(',',@data);
    print CVSFILE "$data_line\n";
  }
}

close(TABFILE);
close(CVSFILE);
