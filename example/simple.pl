#!perl -w
use strict;
use lib 'lib';
use BinSearch;

print BinSearch::find(7, [1, 2, 3, 5, 7, 11, 13]), "\n";

