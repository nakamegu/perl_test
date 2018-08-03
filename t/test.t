use strict;
use warnings;
use Test::More;

use FindBin;
use lib "$FindBin::Bin/../lib";

use_ok('SomeModule');

use SomeModule;

my $module = SomeModule->new;
is 3, $module->single_loop(2);
is 36, $module->triple_loop(2);
is 52, $module->more_complex(2);

done_testing;
