use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME             => 'Filter::CommaEquals',
    AUTHOR           => 'Gryphon Shafer <gryphon@cpan.org>',
    VERSION_FROM     => 'lib/Filter/CommaEquals.pm',
    ABSTRACT_FROM    => 'lib/Filter/CommaEquals.pm',
    PL_FILES         => {},
    MIN_PERL_VERSION => '5.10.1',
    PREREQ_PM        => {
        'Filter::Simple' => 0,
        'Test::Most'     => 0,
    },
    dist  => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean => { FILES => 'Filter-CommaEquals-*' },
    ( $ExtUtils::MakeMaker::VERSION >= 6.3002 ? ('LICENSE'=> 'perl') : () ),
);
