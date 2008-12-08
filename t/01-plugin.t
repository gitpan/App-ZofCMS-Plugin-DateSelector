#!/usr/bin/env perl

use strict;
use warnings;

use Test::More;

my $version = '0.0104';
eval "use App::ZofCMS::Test::Plugin $version;";
plan skip_all
=> "App::ZofCMS::Test::Plugin version $version is required for testing plugin"
    if $@;

plugin_ok(
    'DateSelector',
    {
        plug_date_selector => {
            class           => 'date_selector',
            #id              => 'date_selector',
            q_name          => 'date',
            t_name          => 'date_selector',
            start           => 1227661369,
            end             => 1229661369,
            interval_step   => 'day',
            interval_max    => 'year',
        },
    },
    {},
    {
        plug_date_selector => {
            class           => 'date_selector',
            #id              => 'date_selector',
            q_name          => 'date',
            t_name          => 'date_selector',
            start           => 1227661369,
            end             => 1229661369,
            interval_step   => 'day',
            interval_max    => 'year',
        },
    },
);