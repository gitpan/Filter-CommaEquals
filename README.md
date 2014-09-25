# Filter::CommaEquals - Adds support for ,= to any package or script

Adds support for ,= to any package or script. Perl has +=, -=, /=, *=, .=, and
so forth to operate on scalars, but it doesn't have ,= to operate on arrays.
This module effectively lets you rewrite push statements with ,= instead.

[![Build Status](https://travis-ci.org/gryphonshafer/Filter-CommaEquals.svg)](https://travis-ci.org/gryphonshafer/Filter-CommaEquals)
[![Coverage Status](https://coveralls.io/repos/gryphonshafer/Filter-CommaEquals/badge.png)](https://coveralls.io/r/gryphonshafer/Filter-CommaEquals)

## Installation

To install this module, run the following commands:

    perl Makefile.PL
    make
    make test
    make install

## Support and Documentation

After installing, you can find documentation for this module with the
perldoc command.

    perldoc Filter::CommaEquals

You can also look for information at:

- [GitHub](https://github.com/gryphonshafer/Filter-CommaEquals "GitHub")
- [AnnoCPAN](http://annocpan.org/dist/Filter-CommaEquals "AnnoCPAN")
- [CPAN Ratings](http://cpanratings.perl.org/m/Filter-CommaEquals "CPAN Ratings")
- [Search CPAN](http://search.cpan.org/dist/Filter-CommaEquals "Search CPAN")

## Author and License

Gryphon Shafer, [gryphon@cpan.org](mailto:gryphon@cpan.org "Email Gryphon Shafer")

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.
