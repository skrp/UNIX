#!/usr/local/bin/perl
#####################

my @files = <good/*>;
foreach my $f (@files)
{
    open(my $tfh, '<', $f) or die ("cant open $f\n");
    my @set = readline $tfh; chomp $tfh; close $tfh;
    foreach (@set)
    {
        if (/ total of /)
        {
            my $line = $_;
            $line =~ s/.*total of //;
            $line =~ s/entries.*//;
            print "$f $line\n";
            last;
        }
    }
}
