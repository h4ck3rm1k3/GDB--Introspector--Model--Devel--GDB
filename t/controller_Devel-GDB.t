use strict;
use warnings;
use Test::More tests => 3;

BEGIN { use_ok 'Catalyst::Test', 'GDB::Introspector' }
BEGIN { use_ok 'GDB::Introspector::Controller::Devel::GDB' }

ok( request('/devel/gdb')->is_success, 'Request should succeed' );


