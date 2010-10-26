#!/usr/bin/perl

use strict;
use warnings;
use Test::More;

eval "use Test::Pod::Coverage";
plan skip_all => "Test::Pod::Coverage required for testing pod coverage" if $@;

plan tests => 2;

pod_coverage_ok( "Mock::Person", "Mock::Person is covered" );
pod_coverage_ok( "Mock::Person::RU", "Mock::Person::RU is covered" );
