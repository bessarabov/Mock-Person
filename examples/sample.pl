#!/usr/bin/perl

use strict;
use warnings;

use Cwd;
use File::Basename;

use lib File::Basename::dirname( Cwd::abs_path(__FILE__)) . '/../lib';
use Mock::Person;
binmode STDOUT, ":utf8"; 

print " Russian:\n", '-' x 80, "\n";
for(0 .. 4) {
  print Mock::Person::name(
    sex     => 'male',
    country => 'ru',
  ), "\n";
}

print "\n Swedish:\n", '-' x 80, "\n";
for(0 .. 4) {
  print Mock::Person::name(
    sex     => 'male',
    country => 'sv',
  ), "\n";
}
