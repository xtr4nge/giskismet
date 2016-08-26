use ExtUtils::MakeMaker;

# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.

WriteMakefile(
    'NAME'        => 'giskismet',
    'AUTHOR'      => 'Joshua D. Abraham',
    'VERSION'     => '0.02',
    'EXE_FILES'   => [ 'giskismet' ],
    'INSTALLDIRS' => 'site',
    'MAN1PODS'    => {
        'giskismet.man.1'   => 'blib/man1/giskismet.1p',
    },
    'PREREQ_PM' => {
        'XML::LibXML'  => '1.01',
        'DBI'           => '1.50',
        'DBD::SQLite'   => '1.11',
    },
    'dist' => {
        'SUFFIX'       => ".gz",
        'DIST_DEFAULT' => 'all tardist',
        'COMPRESS'     => "gzip -9f"
    },
    'realclean' => { 'FILES' => '' },
    'clean'     => { 'FILES' => '' },
);
