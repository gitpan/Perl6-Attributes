package Perl6::Attributes;

use 5.006001;
use strict;
no warnings;

our $VERSION;
$VERSION = '0.01';

use Filter::Simple sub {
    s/([\$@%&])\.([a-zA-Z_]\w+)/
        $1 eq '$' ? "\$self->{'$2'}" : "$1\{\$self->{'$1'}\}"/ge;
};
