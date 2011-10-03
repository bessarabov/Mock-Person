#!/usr/bin/perl

use strict;
use warnings;
use utf8;
use Test::More tests => 8;

BEGIN { use_ok 'Mock::Person' }
like(Mock::Person::name( country=> 'ru', sex=> 'male'), qr/\w+\s\w+\s\w+/, 'name matches regex');
like(Mock::Person::name( country=> 'ru', sex=> 'female'), qr/\w+\s\w+\s\w+/, 'name matches regex');
like(Mock::Person::name( sex=> 'male'), qr/\w+\s\w+\s\w+/, 'name matches regex');
like(Mock::Person::name( sex=> 'female'), qr/\w+\s\w+\s\w+/, 'name matches regex');
like(Mock::Person::name(), qr/\w+\s\w+\s\w+/, 'name matches regex');

like(Mock::Person::name( country=> 'sv', sex=> 'male'), qr/\w+\s\w+\s\w+/, 'name matches regex');
like(Mock::Person::name( country=> 'sv', sex=> 'female'), qr/\w+\s\w+\s\w+/, 'name matches regex');

