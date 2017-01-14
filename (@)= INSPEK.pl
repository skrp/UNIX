use strict; use warnings;
use Digest::SHA ();
###########################
# INSPEK - validate configs
#  (@)=     ---skrp of MKRX
my ($true_path) = @ARGV;
open(my $tfh, '<', $true_path) or die "cant open $true_path";
my @unsplit_true = readline $tfh; chomp @unsplit_true;
my %true;
foreach my $line (@unsplit_true) {
  my @line_value = split(" ", $line, 2); # [0] = sha
  $true{line_value[0]} = $line_value[1]; # [1] = path_to_config
 }
foreach my $key (keys %true) {
  my $target = $true{$key};
  my ($sha) = file_digest($target) or die "cant sha $target";
  if ($sha ne $key) 
    { die "ALERT: $target"; }
}
# SUBS ##################
sub file_digest {
	my ($filename) = @_;
	my $digester = Digest::SHA->new('sha256');
	$digester->addfile( $filename, 'b' );
	return $digester->hexdigest;
}
