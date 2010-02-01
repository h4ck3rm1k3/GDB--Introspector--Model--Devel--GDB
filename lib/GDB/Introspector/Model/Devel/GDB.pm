package GDB::Introspector::Model::Devel::GDB;

use strict;
use warnings;
use parent 'Catalyst::Model';

=head1 NAME

GDB::Introspector::Model::Devel::GDB - Catalyst Model

=head1 DESCRIPTION

Catalyst Model.

=head1 AUTHOR

James Michael DuPont,,,

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
use Devel::GDB;

sub new {
        my $class = shift;
        my $self = {};
        $self->{gdb} = new Devel::GDB();
        bless $self, $class;
        return $self;
    }

1;
