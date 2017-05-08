package catalystionictest::Controller::Root;
use Moose;
use namespace::autoclean;

BEGIN { extends 'Catalyst::Controller' }

#
# Sets the actions in this controller to be registered with no prefix
# so they function identically to actions created in MyApp.pm
#
__PACKAGE__->config(namespace => '');

=head1 NAME

catalystionictest::Controller::Root - Root Controller for catalystionictest

=head1 DESCRIPTION

[enter your description here]

=head1 METHODS

=head2 index

The root page (/)

=cut

sub index :Path :Args(0) {
    my ( $self, $c ) = @_;

    # Hello World
    $c->response->body( $c->welcome_message );
}

=head2 default

Standard 404 error page

=cut

sub default :Path {
    my ( $self, $c ) = @_;
    $c->response->body( 'Page not found' );
    $c->response->status(404);
}


=head2 list_recent
List recently created books
=cut



=head2 quote_list
=cut

sub p0 :Chained('/') :PathPart('p0') :CaptureArgs(0) {
    my ( $self, $c ) = @_;

    $c->log->debug('\n\n__________________ base __________________\n\n');
}

=cut

__PACKAGE__->meta->make_immutable;

=head2 quote_list
=cut

sub p1 :Chained('p0') :PathPart('p1') :Args(0) {
    my ( $self, $c ) = @_;

    $c->stash->{message}  = 'Hello World!';

    $c->log->debug('\n\n__________________quote_list sn__________________\n\n');
    $c->stash(template => 'p1/p1.tt2');
}

=head2 end

Attempt to render a view, if needed.

=cut

sub end : ActionClass('RenderView') {}

=head1 AUTHOR

FAIRFX User,,,

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

__PACKAGE__->meta->make_immutable;
