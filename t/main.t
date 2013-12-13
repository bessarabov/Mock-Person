#!/usr/bin/perl

use strict;
use warnings FATAL => 'all';
use utf8;
use open qw(:std :utf8);

use Test::More;

use Mock::Person;

eval { Mock::Person->new() };
ok($@, "Can't create object without mandatory fields");

eval { Mock::Person->new( country => 'no_such_country_code', sex => 'male' ) };
ok($@, "Can't create object with incorrect country code");

eval { Mock::Person->new( country => 'ru', sex => 'no_such_sex' ) };
ok($@, "Can't create object with incorrect sex");

foreach my $country_code ('ru', 'us', 'se', 'sk') {
    foreach my $sex ('male', 'female') {
        my $person;
        eval {
            $person = Mock::Person->new( country => $country_code, sex => $sex );
        };
        ok(not($@), "Shoule be able to create person $country_code $sex $@");
        ok(length($person->get_first_name()) > 0, "Got person first name");
        ok(length($person->get_last_name()) > 0, "Got person last name");
        if ($person->has_middle_name()) {
            ok(length($person->get_middle_name()) > 0, "Got person middle name");
        }
    }
}

done_testing;
