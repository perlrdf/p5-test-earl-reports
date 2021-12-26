=pod

=encoding utf-8

=head1 PURPOSE

Test that Test::EARL::Reports compiles.

=head1 AUTHOR

Kjetil Kjernsmo E<lt>kjetilk@cpan.orgE<gt>.

=head1 COPYRIGHT AND LICENCE

This software is copyright (c) 2021 by Kjetil Kjernsmo.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.


=cut

use strict;
use warnings;
use Test::More;

use_ok('Test::EARL::Reports');

diag( "Testing Test::EARL::Reports $Test::EARL::Reports::VERSION, Perl $], $^X" );

done_testing;

