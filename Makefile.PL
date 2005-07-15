use 5.0071;
use ExtUtils::MakeMaker;

WriteMakefile(
	NAME         => 'Filter::CommaEquals',
	VERSION_FROM => 'lib/Filter/CommaEquals.pm',
	PREREQ_PM    => {
		'Filter::Simple' => 0
	},
	($] >= 5.005 ? (
		ABSTRACT_FROM => 'lib/Filter/CommaEquals.pm',
		AUTHOR        => 'Gryphon Shafer <gryphon@cpan.org>'
	) : ()),
);
