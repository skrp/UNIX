#!/usr/local/bin/perl
use strict; use warnings;
################################
# NEWS Collector - info gatherer
my $dir = '/news/dump';
my @sys_logs = {
  '/var/logs/auth.log',
  '/var/logs/cron',
  '/var/logs/dmesg.latest',
  '/var/logs/devd.log',
  '/var/logs/debug.log',
  '/var/logs/pf.log_parsed',
  '/var/logs/security',
  '/var/logs/setuid.today',
  '/var/logs/userlog'
};
my @logs = { 
  'alerts',
  'mkrx_entropy',
  'mkrx',
  'zfs_status',
  'zpool_status',
  'dump_log',
  'netstat_today',
  'top_today',
  'httpd_stats',
  'nfs_stats',
};
my @read = {
  'sec_advisory',
  'man',
  'src',
  'ctag',
  'goals',
};
