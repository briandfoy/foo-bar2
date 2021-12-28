my @classes = qw(
	Foo::Bar2
	);

use Test::More;

foreach my $class ( @classes ) {
	BAIL_OUT( "Bail out! $class did not compile\n" ) unless use_ok( $class );
	}

done_testing();
