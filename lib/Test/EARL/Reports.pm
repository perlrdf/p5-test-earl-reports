use 5.010001;
use strict;
use warnings;

package Test::EARL::Reports;

our $AUTHORITY = 'cpan:KJETILK';
our $VERSION   = '0.001';

1;

__END__

=pod

=encoding utf-8

=head1 NAME

Test::EARL::Reports - Parse EARL reports to produce tests

=head1 SYNOPSIS

=head1 DESCRIPTION

This module is intended to be used in the case where other systems produce a report in the L<Evaluation and Report Language (EARL)|https://www.w3.org/TR/EARL10-Schema/> and you wish to use the report in testing your own system or module with Perl facilities such as C<prove>.

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

