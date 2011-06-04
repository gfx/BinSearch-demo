#!perl -w
use strict;
use FindBin qw($Bin);
use lib 'lib', $Bin;

use Benchmark qw(timethese cmpthese);
use Test::More;
use BinSearch;
use LinearSearch;

my @values = (1 .. 100000);

foreach my $value(100, 55555, 100000) {
    is LinearSearch::find($value, \@values), BinSearch::find($value, \@values), "for $value";
    cmpthese timethese 10000, {
        line_s => sub {
            my $i = LinearSearch::find($value, \@values);
        },

        bin_s => sub {
            my $i = BinSearch::find($value, \@values);
        },

    };
}
done_testing;

