#!/usr/bin/perl
#
# Copyright 2014 Pierre Mavro <deimos@deimos.fr>
# Copyright 2014 Vivien Didelot <vivien@didelot.org>
# Copyright 2014 Andreas Guldstrand <andreas.guldstrand@gmail.com>
#
# Licensed under the terms of the GNU GPL v3, or any later version.

use strict;
use warnings;
use utf8;
use Getopt::Long;

# default values
my $t_warn = 50;
my $t_crit = 80;
my $cpu_usage = -1;
my $decimals = 2;

sub help {
    print "Usage: cpu_usage [-w <warning>] [-c <critical>] [-d <decimals>]\n";
    print "-w <percent>: warning threshold to become yellow\n";
    print "-c <percent>: critical threshold to become red\n";
    print "-d <decimals>:  Use <decimals> decimals for percentage (default is $decimals) \n"; 
    exit 0;
}

GetOptions("help|h" => \&help,
           "w=i"    => \$t_warn,
           "c=i"    => \$t_crit,
           "d=i"    => \$decimals,
);

# Get CPU usage
$ENV{LC_ALL}="en_US"; # if mpstat is not run under en_US locale, things may break, so make sure it is
open (MPSTAT, 'mpstat 1 1 |') or die;
while (<MPSTAT>) {
    if (/^.*\s+(\d+\.\d+)\s+$/) {
        $cpu_usage = 100 - $1; # 100% - %idle
        last;
    }
}
close(MPSTAT);

$cpu_usage eq -1 and die 'Cant find CPU information';

if ($cpu_usage > 50)
{
  printf '<span foreground="#F98800">';
}
elsif ($cpu_usage > 75)
{
  printf '<span foreground="#D50000">';
}
else
{
  printf '<span foreground="#66BB6A">';
}

# Print short_text, full_text
printf "CPU %.${decimals}f%%", $cpu_usage;
printf "</span>";

exit 0;
