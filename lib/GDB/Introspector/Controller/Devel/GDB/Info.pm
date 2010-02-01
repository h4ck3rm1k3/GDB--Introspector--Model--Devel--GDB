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
    my @results = split ("\n", $gdb->get('info'));

    my $report     ="";
    foreach my $r (@results)
    {
	if ($r =~ /info (\w+)\s+\-\-\s+(.+)/)
	{
	    my $cmd =$1;

	    my $sum= sprintf(' sub %s : Local {
     my ($self,$c,@args) = @_;   
     Process($self,$c,"%s");
 }
',$cmd,$cmd);
	    
	    $report .= "<h1>$sum</h1>";	    

	}
	else
	{
	    
	}
    }

    $c->response->body('info ' .  $report );

}

# info program

sub Process {
     my ($self,$c,$cmd) = @_;   
     my $gdb = $c->model('Devel::GDB');
     $c->response->body("info $cmd :" .  $gdb->get("info $cmd") );
 }


 sub address : Local {
     my ($self,$c,@args) = @_;   
     Process($self,$c,"address");
 }
 sub args : Local {
     my ($self,$c,@args) = @_;   
     Process($self,$c,"args");
 }
 sub auxv : Local {
     my ($self,$c,@args) = @_;   
     Process($self,$c,"auxv");
 }
 sub breakpoints : Local {
     my ($self,$c,@args) = @_;   
     Process($self,$c,"breakpoints");
 }
 sub catch : Local {
     my ($self,$c,@args) = @_;   
     Process($self,$c,"catch");
 }
 sub checkpoints : Local {
     my ($self,$c,@args) = @_;   
     Process($self,$c,"checkpoints");
 }
 sub classes : Local {
     my ($self,$c,@args) = @_;   
     Process($self,$c,"classes");
 }
 sub common : Local {
     my ($self,$c,@args) = @_;   
     Process($self,$c,"common");
 }
 sub copying : Local {
     my ($self,$c,@args) = @_;   
     Process($self,$c,"copying");
 }
 sub dcache : Local {
     my ($self,$c,@args) = @_;   
     Process($self,$c,"dcache");
 }
 sub display : Local {
     my ($self,$c,@args) = @_;   
     Process($self,$c,"display");
 }
 sub extensions : Local {
     my ($self,$c,@args) = @_;   
     Process($self,$c,"extensions");
 }
 sub files : Local {
     my ($self,$c,@args) = @_;   
     Process($self,$c,"files");
 }
 sub float : Local {
     my ($self,$c,@args) = @_;   
     Process($self,$c,"float");
 }
 sub frame : Local {
     my ($self,$c,@args) = @_;   
     Process($self,$c,"frame");
 }
 sub functions : Local {
     my ($self,$c,@args) = @_;   
     Process($self,$c,"functions");
 }
 sub handle : Local {
     my ($self,$c,@args) = @_;   
     Process($self,$c,"handle");
 }
 sub inferiors : Local {
     my ($self,$c,@args) = @_;   
     Process($self,$c,"inferiors");
 }
 sub line : Local {
     my ($self,$c,@args) = @_;   
     Process($self,$c,"line");
 }
 sub linkmap : Local {
     my ($self,$c,@args) = @_;   
     Process($self,$c,"linkmap");
 }
 sub locals : Local {
     my ($self,$c,@args) = @_;   
     Process($self,$c,"locals");
 }
 sub macro : Local {
     my ($self,$c,@args) = @_;   
     Process($self,$c,"macro");
 }
 sub mem : Local {
     my ($self,$c,@args) = @_;   
     Process($self,$c,"mem");
 }
 sub os : Local {
     my ($self,$c,@args) = @_;   
     Process($self,$c,"os");
 }
 sub proc : Local {
     my ($self,$c,@args) = @_;   
     Process($self,$c,"proc");
 }
 sub program : Local {
     my ($self,$c,@args) = @_;   
     Process($self,$c,"program");
 }
 sub record : Local {
     my ($self,$c,@args) = @_;   
     Process($self,$c,"record");
 }
 sub registers : Local {
     my ($self,$c,@args) = @_;   
     Process($self,$c,"registers");
 }
 sub scope : Local {
     my ($self,$c,@args) = @_;   
     Process($self,$c,"scope");
 }
 sub selectors : Local {
     my ($self,$c,@args) = @_;   
     Process($self,$c,"selectors");
 }
 sub set : Local {
     my ($self,$c,@args) = @_;   
     Process($self,$c,"set");
 }
 sub sharedlibrary : Local {
     my ($self,$c,@args) = @_;   
     Process($self,$c,"sharedlibrary");
 }
 sub signals : Local {
     my ($self,$c,@args) = @_;   
     Process($self,$c,"signals");
 }
 sub source : Local {
     my ($self,$c,@args) = @_;   
     Process($self,$c,"source");
 }
 sub sources : Local {
     my ($self,$c,@args) = @_;   
     Process($self,$c,"sources");
 }
 sub stack : Local {
     my ($self,$c,@args) = @_;   
     Process($self,$c,"stack");
 }
 sub symbol : Local {
     my ($self,$c,@args) = @_;   
     Process($self,$c,"symbol");
 }
 sub target : Local {
     my ($self,$c,@args) = @_;   
     Process($self,$c,"target");
 }
 sub tasks : Local {
     my ($self,$c,@args) = @_;   
     Process($self,$c,"tasks");
 }
 sub terminal : Local {
     my ($self,$c,@args) = @_;   
     Process($self,$c,"terminal");
 }
 sub threads : Local {
     my ($self,$c,@args) = @_;   
     Process($self,$c,"threads");
 }
 sub tracepoints : Local {
     my ($self,$c,@args) = @_;   
     Process($self,$c,"tracepoints");
 }
 sub types : Local {
     my ($self,$c,@args) = @_;   
     Process($self,$c,"types");
 }
 sub variables : Local {
     my ($self,$c,@args) = @_;   
     Process($self,$c,"variables");
 }
 sub vector : Local {
     my ($self,$c,@args) = @_;   
     Process($self,$c,"vector");
 }
 sub warranty : Local {
     my ($self,$c,@args) = @_;   
     Process($self,$c,"warranty");
 }
 sub watchpoints : Local {
     my ($self,$c,@args) = @_;   
     Process($self,$c,"watchpoints");
 }
 sub win : Local {
     my ($self,$c,@args) = @_;   
     Process($self,$c,"win");
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
