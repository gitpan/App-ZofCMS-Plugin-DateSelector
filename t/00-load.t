#!/usr/bin/env perl

use Test::More tests => 4;

BEGIN {
    use_ok('App::ZofCMS');
    use_ok('HTML::Template');
    use_ok('Time::Local');
	use_ok( 'App::ZofCMS::Plugin::DateSelector' );
}

diag( "Testing App::ZofCMS::Plugin::DateSelector $App::ZofCMS::Plugin::DateSelector::VERSION, Perl $], $^X" );
