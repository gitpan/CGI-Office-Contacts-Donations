use Module::Build;

Module::Build -> new
(
	module_name    => 'CGI::Office::Contacts::Donations',
	license        => 'artistic',
	dist_abstract  => 'Web-based, group and private, donations manager',
	dist_author    => 'Ron Savage <ron@savage.net.au>',
	build_requires =>
	{
		Test::More => 0,
		Test::Pod  => 0,
	},
	requires =>
	{
		CGI::Office::Contacts => 0,
		Scalar::Util          => 0,
	},
) -> create_build_script();
