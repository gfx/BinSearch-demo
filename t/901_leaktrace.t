#!perl -w
use strict;
use Test::Requires { 'Test::LeakTrace' => 0.13 };
use Test::More;

use LinearSearch;

no_leaks_ok {
    LinearSearch::find(0, 1, 0, 2) == 1 or die;
};

done_testing;
