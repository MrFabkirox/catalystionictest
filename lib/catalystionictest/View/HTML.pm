package catalystionictest::View::HTML;

use strict;
use warnings;

use base 'Catalyst::View::TT';

__PACKAGE__->config(

    TEMPLATE_EXTENSION => '.tt2',

    INCLUDE_PATH => [
            catalystionictest->path_to( 'root', 'src' ),
        ],
    # Set to 1 for detailed timer stats in your HTML as comments
    TIMER              => 0,
    ABSOLUTE           => 1,
    RELATIVE           => 0,
    WRAPPER => 'wrapper.tt2',
);

=head1 NAME

catalystionictest::View::HTML - TT View for catalystionictest

=head1 DESCRIPTION

TT View for catalystionictest.

=head1 SEE ALSO

L<catalystionictest>

=head1 AUTHOR

FAIRFX User,,,

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
