package SomeModule;

use strict;
use warnings;

#.----------------------------------------.
#| method       | loc | mccabe_complexity |
#+--------------+-----+-------------------+
#| new          |   4 |                 1 |
#| single_loop  |   8 |                 2 |
#| triple_loop  |  13 |                 4 |
#| more_complex |  13 |                 6 |
#'--------------+-----+-------------------'

sub new {
    my ($class) = @_;
    bless {}, $class;
}

sub single_loop {
    my ($self, $num) = @_;

    my $result = 0;
    for my $n1 (1..$num) {
        $result += $n1;
    }
    $result;
}

sub triple_loop {
    my ($self, $num) = @_;

    my $result = 0;
    for my $n1 (1..$num) {
        for my $n2 (1..$num) {
            for my $n3 (1..$num) {
                my $n = $n1 + $n2 + $n3;
                $result += $n;
            }
        }
    }
    $result;
}

sub more_complex {
    my ($self, $num) = @_;

    my $result = 0;

    for my $n1 (1..$num) {
#        my $a = ($n1 % 2 == 0) ? 2 : 1;
        for my $n2 (1..$num) {
#            my $b = ($n2 % $a == 0) ? 2 : 1;
            for my $n3 (1..$num) {
#                my $c = ($n3 % $b == 0) ? 2 : 1;
                my $n = ($n1 + $n2 + $n3); #* $c;
                $result += $n if $n % 2 == 0;
            }
        }
    }
    $result;
}

1;
