use Test::More tests => 5;

BEGIN { use_ok('Perl6::Attributes') };

is(q($.foo), q($self->{'foo'}), 'scalar');
is(q(@.foo), q(@{$self->{'foo'}}), 'array');
is(q(%.foo), q(%{$self->{'foo'}}), 'hash');
is(q(&.foo), q(&{$self->{'foo'}}), 'code');

# vim: ft=perl :
