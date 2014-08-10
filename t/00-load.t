#!/usr/bin/env perl -T
use Test::More tests => 1;

BEGIN {
    use_ok( 'Filter::CommaEquals' ) || print "Bail out!\n";
}

diag( "Testing Filter::CommaEquals $Filter::CommaEquals::VERSION, Perl $], $^X" );
