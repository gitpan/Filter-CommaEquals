#=================================================================== -*-perl-*-
#
# Filter::CommaEquals
#
# DESCRIPTION
#
#   Adds support for ,= to any package or script
#
# AUTHOR
#   Gryphon Shafer <gryphon@cpan.org>
#
# COPYRIGHT
#   Copyright (C) 2005 by Gryphon Shafer
#
#   This library is free software; you can redistribute it and/or modify it
#   under the same terms as Perl itself, either Perl version 5.8.4 or, at
#   your option, any later version of Perl 5 you may have available.
#
#==============================================================================

package Filter::CommaEquals;
our $VERSION = '0.01';

use 5.0071;
use strict;
use warnings FATAL => 'all';
use Filter::Simple;

FILTER_ONLY
	code => sub {
		s/(\@[^',=']+)\s*,=\s*([^;]+);/push $1, $2;/msg
	};

#==============================================================================

1;
__END__

=pod
=head1 NAME

Filter::CommaEquals - Adds support for ,= to any package or script

=head1 SYNOPSIS

	use Filter::CommaEquals;
	my @array = (42, 1138, 96);

	@array ,= 433;
	# exactly the same as writing: push(@array, 433);

	print join(', ', @array), "\n";
	# prints: 42, 1138, 96, 433

=head1 DESCRIPTION

Adds support for ,= to any package or script.
Perl has +=, -=, /=, *=, .=, and so forth to operate on scalars,
but it doesn't have ,= to operate on arrays. This module effectively lets
you rewrite push statements with ,= instead.

For example...

	push @array, $element;
	push(@array, $element_1, $element_2, $element_3);
	push @array, [ 42, 1138, 96, 433 ];

...can now be rewritten as...

	use Filter::CommaEquals;
	@array ,= $element;
	@array ,= $element_1, $element_2, $element_3;
	@array ,= [ 42, 1138, 96, 433 ];

Cool, huh? Admit it. You want to write ,= instead of push, don't you.
You can save typing 3 whole characters!

Filter::CommaEquals is scoped to the package or script that it's used in,
but nothing more, and it requires Perl version 5.7.1 or higher.

=head1 MOTIVATION

A coworker complained about ,= not being in core Perl. After some thought,
I realized writing ,= is faster (by 3 key presses) than push.
I'm lazy... really lazy.

=head1 AUTHOR

Gryphon Shafer E<lt>gryphon@cpan.orgE<gt>

	code('Perl') || die;

If you're not a member of PerlMonks (http://www.perlmonks.org/), you should be.
My username is gryphon. Yeah, I'm a Saint; but I don't let that go to my head.
I'd like to give special thanks to Larry Wall for Perl, Randal Schwartz for
my initial and on-going Perl education, Sam Tregar for teaching me how to
write and upload CPAN modules, and the monks of PerlMonks for putting up with
my foolishness.

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2005 by Gryphon Shafer

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.7.1 or,
at your option, any later version of Perl 5 you may have available.

=cut
