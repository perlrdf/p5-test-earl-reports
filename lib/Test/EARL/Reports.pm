use 5.010001;
use strict;
use warnings;

package Test::EARL::Reports;
use Attean;
use Attean::RDF qw(iri);
use Moo;
use IO::Handle;
use Types::Standard qw( Str InstanceOf );
use Test::More;

our $AUTHORITY = 'cpan:KJETILK';
our $VERSION   = '0.001_01';

has parser => (
					is => 'ro',
					required => 1,
					isa => Str,
				  );

has fh => (
			  is => 'ro',
			  required => 1,
			  isa => InstanceOf['IO::Handle'],
			 );

sub run_tests {
  my $self = shift;
  my $p = Attean->get_parser($self->parser)->new;
  my $iter = $p->parse_iter_from_io( $self->fh );
  while (my $triple = $iter->next) {
	 if ($triple->object->equals(iri('http://www.w3.org/ns/earl#passed'))) {
		pass($triple->subject->as_string);
	 }
	 if ($triple->object->equals(iri('http://www.w3.org/ns/earl#failed'))) {
		fail($triple->subject->as_string);
	 }
  }
}

1;

__END__

=pod

=encoding utf-8

=head1 NAME

Test::EARL::Reports - Parse EARL reports to produce tests

=head1 DESCRIPTION

This module is intended to be used in the case where other systems produce a report in the L<Evaluation and Report Language (EARL)|https://www.w3.org/TR/EARL10-Schema/> and you wish to use the report in testing your own system or module with Perl facilities such as C<prove>.

=head1 SYNOPSIS

In a test script, you will need the run the external test suite that generates the EARL report and then pass the EARL report as a L<IO::Handle>, for example:

 use Test::EARL::Reports;
 use IO::File;

 [... run external test suite ...]

 my $earl = Test::EARL::Reports->new(parser => 'Turtle',
                                     fh => IO::File->new('report.ttl', 'r'));
 $earl->run_tests;
 done_testing;


=head1 BUGS

Please report any bugs to
L<https://github.com/kjetilk/p5-test-earl-reports/issues>.

=head1 SEE ALSO

=head1 AUTHOR

Kjetil Kjernsmo E<lt>kjetilk@cpan.orgE<gt>.

=head1 COPYRIGHT AND LICENCE

This software is copyright (c) 2021 by Kjetil Kjernsmo.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.


=head1 DISCLAIMER OF WARRANTIES

THIS PACKAGE IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED
WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF
MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.

