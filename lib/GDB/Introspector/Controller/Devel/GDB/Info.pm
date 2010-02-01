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
#    $c->response->body('Matched GDB::Introspector::Controller::Devel::GDB::Info in Devel::GDB::Info.');
    my ($self,$c,@args) = @_;   
    my $gdb = $c->model('Devel::GDB');
    $c->response->body('info ' .  $gdb->get('info') );

}

# info program

 sub program : Local {
     my ($self,$c,@args) = @_;   
     my $gdb = $c->model('Devel::GDB');
     $c->response->body('info program :' .  $gdb->get('info program') );

 }

sub file : Local {
    my ($self,$c,@args) = @_;   
    my $gdb = $c->model('Devel::GDB');
    $c->response->body('info file :' .  $gdb->get('info file') );
 }

sub file : Local {
    my ($self,$c,@args) = @_;   
    my $gdb = $c->model('Devel::GDB');
    $c->response->body('info file :' .  $gdb->get('info file') );
 }

# info address -- Describe where symbol SYM is stored
# info all-registers -- List of all registers and their contents
# info args -- Argument variables of current stack frame
# info auxv -- Display the inferior's auxiliary vector
# info breakpoints -- Status of user-settable breakpoints
# info catch -- Exceptions that can be caught in the current stack frame
# info checkpoints -- IDs of currently known checkpoints
# info classes -- All Objective-C classes
# info common -- Print out the values contained in a Fortran COMMON block
# info copying -- Conditions for redistributing copies of GDB
# info dcache -- Print information on the dcache performance
# info display -- Expressions to display when program stops
# info extensions -- All filename extensions associated with a source language
# info files -- Names of targets and files being debugged
# info float -- Print the status of the floating point unit
# info frame -- All about selected stack frame
# info functions -- All function names
# info handle -- What debugger does when program gets various signals
# info inferiors -- IDs of currently known inferiors
# info line -- Core addresses of the code for a source line
# info linkmap -- Display the inferior's linkmap
# info locals -- Local variables of current stack frame
# info macro -- Show the definition of MACRO
# info mem -- Memory region attributes
# info os -- Show OS data ARG
# info proc -- Show /proc process information about any running process
# info program -- Execution status of the program
# info record -- Info record options
# info registers -- List of integer registers and their contents
# info scope -- List the variables local to a scope
# info selectors -- All Objective-C selectors
# info set -- Show all GDB settings
# info sharedlibrary -- Status of loaded shared object libraries
# info signals -- What debugger does when program gets various signals
# info source -- Information about the current source file
# info sources -- Source files in the program
# info stack -- Backtrace of the stack
# info symbol -- Describe what symbol is at location ADDR
# info target -- Names of targets and files being debugged
# info tasks -- Provide information about all known Ada tasks
# info terminal -- Print inferior's saved terminal status
# info threads -- IDs of currently known threads
# info tracepoints -- Status of tracepoints
# info types -- All type names
# info variables -- All global and static variable names
# info vector -- Print the status of the vector unit
# info warranty -- Various kinds of warranty you do not have
# info watchpoints -- Synonym for ``info breakpoints''
# info win -- List of all displayed windows
#Type "help info" followed by info subcommand name for full documentation.
#Type "apropos word" to search for commands related to "word".
#Command name abbreviations are allowed if unambiguous.

=head1 AUTHOR

James Michael DuPont,,,

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
