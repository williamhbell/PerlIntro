#!/usr/bin/perl
#
# W. H. Bell
# A program to demonstrate different loop types.

# while loop
$i = 1;
while ($i<=2) {
  print STDOUT "while loop $i\n";

  $i++;
}

# C-style for loop
for ($i=1; $i<=2; $i++) {
  print STDERR "Loop $i\n";
}

# for loop 2
@fruits = ("Apple", "Pear", "Plum");

for my $fruit (@fruits) {
  print STDOUT "$fruit ";
}
print STDOUT "\n";

# Fortran style loop
for (1..2) {
  print STDOUT "Loop $_\n";
}
