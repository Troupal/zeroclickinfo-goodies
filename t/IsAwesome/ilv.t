#!/usr/bin/env perl

use strict;
use warnings;
use Test::More;
use DDG::Test::Goodie;

zci answer_type => "is_awesome_ilv";
zci is_cached   => 1;

ddg_goodie_test(
    [qw(
        DDG::Goodie::IsAwesome::ilv
    )],
    'duckduckhack ilv' => test_zci('ilv is awesome and has successfully completed the DuckDuckHack Goodie tutorial!'),
    'duckduckhack ilv is awesome' => undef,
);

done_testing;
