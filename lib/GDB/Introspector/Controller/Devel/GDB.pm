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

    my $gdb = $c->model('Devel::GDB');
    
    $c->response->body('Matched GDB::Introspector::Controller::Devel::GDB in Devel::GDB.' . 'Data' .  $gdb->get('info functions') );

}

 # `file FILENAME'
 #      Use FILENAME as the program to be debugged.  It is read for its
 #      symbols and for the contents of pure memory.  It is also the
 #      program executed when you use the `run' command.  If you do not
 #      specify a directory and the file is not found in the GDB working
 #      directory, GDB uses the environment variable `PATH' as a list of
 #      directories to search, just as the shell does when looking for a
 #      program to run.  You can change the value of this variable, for
 #      both GDB and your program, using the `path' command.
 #      On systems with memory-mapped files, an auxiliary file named
 #      `FILENAME.syms' may hold symbol table information for FILENAME.
 #      If so, GDB maps in the symbol table from `FILENAME.syms', starting
 #      up more quickly.  See the descriptions of the file options
 #      `-mapped' and `-readnow' (available on the command line, and with
 #      the commands `file', `symbol-file', or `add-symbol-file',
 #      described below), for more information.

sub file : Local {
    my ($self,$c,@args) = @_;
    
    my $gdb = $c->model('Devel::GDB');
    my $file =  $c->req->params->{file};

    if ($file)
    {
	$c->response->body('File set ' . $file  .":" .  $gdb->send_cmd('file ' . $file) );
    }
    else
    {
	$c->response->body("pass the filename via the ?file=filename syntax");
    }
} # Dispatches to /search/foo

sub run : Local {
    my ($self,$c,@args) = @_;
    
    my $gdb = $c->model('Devel::GDB');

    $c->response->body('run  :' . $gdb->send_cmd('run ') );
    
} # Dispatches to /search/foo


=head1 AUTHOR

James Michael DuPont,,,

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
