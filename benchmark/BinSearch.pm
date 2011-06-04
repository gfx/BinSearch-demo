package BinSearch;
use strict;

use if __FILE__ eq $0,  'Smart::Comments';

### assert: _mid(0, 2) == 1
sub _mid {
    my($min, $max) = @_;
    return $min + int( ( $max - $min ) / 2 );
}

### assert: binsearch( 5, 5, 10, 15) == 0
### assert: binsearch(10, 5, 10, 15) == 1
### assert: binsearch(15, 5, 10, 15) == 2

sub find {
    my($value, $values_ref) = @_;

    ### value: $value

    my $min = 0;
    my $max = scalar(@{$values_ref}) - 1;

    while($min <= $max) {
        my $mid  = _mid($min, $max);
        my $elem = $values_ref->[ $mid ];

        ### max,min,mid: ($max,$min,$mid)

        if( $elem == $value ) {
            return $mid;
        }
        elsif( $elem < $value ) {
            $min = $mid + 1;
        }
        else {
            $max = $mid - 1;
        }
    }
    return -1;
}

1;

