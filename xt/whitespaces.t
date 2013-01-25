#!perl

use Test::Whitespaces {
    dirs => [ '.' ],
    ignore => [ qr{/inc/} ],
};
