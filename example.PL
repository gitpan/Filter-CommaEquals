#!/usr/bin/perl
use strict;
use warnings;
use Filter::CommaEquals;

my @array = (42, 1138, 96);
@array ,= 433;
print join(', ', @array), "\n";
