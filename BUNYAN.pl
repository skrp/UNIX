# log parser
oopen {
  my ($log) = @_;
  open(my $lfh, '<', $log);
  my @data = readline $lfh; 
  close $lfh; chomp @data;
  return @data;
}
mkrx { # pool integrity
  my $log = '/var/log/xferlog';
  my @data = oopen($log);
  foreach my $item (@data) {
 #  
  }
}
zpool   
zmd
pflog
tcpdump
auth.log
cron
dmesg
mount.today
security
xferlog {
  my $log = '/var/log/xferlog';
  my @data = oopen($log);
  foreach my $item (@data) {
 # 
  }
}
