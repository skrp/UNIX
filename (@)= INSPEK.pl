use strict; use warnings;
###########################
# INSPEK - validate configs
#  (@)=     ---skrp of MKRX
my $true_path = {{@}};
open(my $tfh, '<', $true_path) or die "cant open $true_path";
my @unsplit_true = readline $tfh; chomp @unsplit_true;
my %true;
foreach my $line (@unsplit_true) {
  my @line_value = split(" ", $line, 2); # [0] = sha
  $true{line_value[0]} = $line_value[1]; # [1] = path_to_config
 }
 
