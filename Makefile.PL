use inc::Module::Install 0.68;

if( -e 'MANIFEST.SKIP' ) {
    system( 'pod2text lib/Catalyst/View/vCard.pm > README' );
}

perl_version '5.008';

name 'Catalyst-View-vCard';
all_from 'lib/Catalyst/View/vCard.pm';

requires 'Catalyst::Runtime';
requires 'Text::vCard';

test_requires 'Test::More';

auto_install;
WriteAll;