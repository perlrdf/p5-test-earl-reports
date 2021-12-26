# NAME

Test::EARL::Reports - Parse EARL reports to produce tests

# DESCRIPTION

This module is intended to be used in the case where other systems produce a report in the [Evaluation and Report Language (EARL)](https://www.w3.org/TR/EARL10-Schema/) and you wish to use the report in testing your own system or module with Perl facilities such as `prove`.

# SYNOPSIS

In a test script, you will need the run the external test suite that generates the EARL report and then pass the EARL report as a [IO::Handle](https://metacpan.org/pod/IO%3A%3AHandle), for example:

    use Test::EARL::Reports;
    use IO::File;

    [... run external test suite ...]

    my $earl = Test::EARL::Reports->new(parser => 'Turtle',
                                        fh => IO::File->new('report.ttl', 'r'));
    $earl->run_tests;
    done_testing;

# BUGS

Please report any bugs to
[https://github.com/kjetilk/p5-test-earl-reports/issues](https://github.com/kjetilk/p5-test-earl-reports/issues).

# SEE ALSO

# AUTHOR

Kjetil Kjernsmo <kjetilk@cpan.org>.

# COPYRIGHT AND LICENCE

This software is copyright (c) 2021 by Kjetil Kjernsmo.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

# DISCLAIMER OF WARRANTIES

THIS PACKAGE IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED
WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF
MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
