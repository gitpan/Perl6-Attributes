use Test::More tests => 2;

BEGIN { use_ok('Perl6::Attributes') };

is(q($.foo), q($self->{'foo'}), 'scalar');

# vim: ft=perl :
