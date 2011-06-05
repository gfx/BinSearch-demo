#!perl -w
use strict;
use Test::More;

use LinearSearch;

# test LinearSearch here
is LinearSearch::find(0,    [0 .. 100]),  0;
is LinearSearch::find(10,   [0 .. 100]), 10;
is LinearSearch::find(100,  [0 .. 100]), 100;
is LinearSearch::find(1000, [0 .. 100]), -1;

is LinearSearch::find(150, [100 .. 200]), 50;

done_testing;
