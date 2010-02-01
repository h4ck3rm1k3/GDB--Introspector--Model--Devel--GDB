package GDB::Introspector::Controller::Devel::GDB;

use strict;
use warnings;
use parent 'Catalyst::Controller';

=head1 NAME

GDB::Introspector::Controller::Devel::GDB - Catalyst Controller

=head1 DESCRIPTION

Catalyst Controller.

=head1 METHODS

=cut


=head2 index

=cut

sub index :Path :Args(0) {
    my ( $self, $c ) = @_;

    my $gdb = $c->model('Devel::GDB')->{gdb};
    
    $c->response->body('Matched GDB::Introspector::Controller::Devel::GDB in Devel::GDB.' . 'Data' .  $gdb->get('info functions') );

}


=head1 AUTHOR

James Michael DuPont,,,

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
