package GDB::Introspector::Controller::Devel::GDB::Info;

use strict;
use warnings;
use parent 'Catalyst::Controller';

=head1 NAME

GDB::Introspector::Controller::Devel::GDB::Info - Catalyst Controller

=head1 DESCRIPTION

Catalyst Controller.

=head1 METHODS

=cut


=head2 index

=cut

sub index :Path :Args(0) {
    my ( $self, $c ) = @_;

    $c->response->body('Matched GDB::Introspector::Controller::Devel::GDB::Info in Devel::GDB::Info.');
}

# info program

 sub program : Local {
     my ($self,$c,@args) = @_;
    
     my $gdb = $c->model('Devel::GDB');
     my $file = shift @args;

     $c->response->body('info program :' .  $gdb->get('info program') );

 }


=head1 AUTHOR

James Michael DuPont,,,

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
