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

sub get
{
    my $self = shift;
    $self->{gdb}->get(@_);    
}

sub send_cmd
{
    my $self = shift;
    $self->{gdb}->send_cmd(@_);  
}

sub send_cmd_excl
{
    my $self = shift;
    $self->{gdb}->send_cmd_excl(@_);  
}

sub send_cmd_async
{
    my $self = shift;
    $self->{gdb}->send_cmd_async(@_);  
}

sub get_expect_obj
{
    my $self = shift;
    $self->{gdb}->get_expect_obj(@_);  
}

sub get_reader
{
    my $self = shift;
    $self->{gdb}->get_reader(@_);  
}

sub get_demux
{
    my $self = shift;
    $self->{gdb}->get_demux(@_);  
}

sub interrupt
{
    my $self = shift;
    $self->{gdb}->interrupt(@_);  
}

sub end
{
    my $self = shift;
    $self->{gdb}->end(@_);  
}






1;
