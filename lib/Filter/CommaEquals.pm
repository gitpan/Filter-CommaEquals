package Filter::CommaEquals;
use strict;
use warnings;
use Filter::Simple;

our $VERSION = '0.01';

FILTER_ONLY
    code => sub {
        s/(\@[^',=']+)\s*,=\s*([^;]+);/push $1, $2;/msg
    };

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

Adds support for ,= to any package or script. Perl has +=, -=, /=, *=, .=, and
so forth to operate on scalars, but it doesn't have ,= to operate on arrays.
This module effectively lets you rewrite push statements with ,= instead.

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
I realized writing ,= is faster (by 3 key presses) than push. Also, I'm lazy.

=head1 AUTHOR

Gryphon Shafer E<lt>gryphon@cpan.orgE<gt>.

    code('Perl') || die;

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.8.4 or,
at your option, any later version of Perl 5 you may have available.

=cut
