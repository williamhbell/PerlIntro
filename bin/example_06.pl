#!/usr/bin/perl
#
# W. H. Bell
# A program that illustrates usage of file i/o.
#

$outputfile = "perl_output";

die ("Can't open $outputfile for writing\n")
  unless open(OUTPUT, "> $outputfile");

print OUTPUT "Pythia 6.2\n";
print OUTPUT "EvtGen On\n";
print OUTPUT "Geant v4\n";

close(OUTPUT);

die ("Can't open $outputfile for reading\n")
  unless open(INPUT, "< $outputfile");

while (<INPUT>) {
  chomp;
  if(defined $_) {
    print STDOUT "$_\n";
  }
}
close(INPUT);

unlink($outputfile);
