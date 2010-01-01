package CGI::Office::Contacts::Donations::View;

use CGI::Office::Contacts::Donations::View::Donations;
use CGI::Office::Contacts::View::Notes;
use CGI::Office::Contacts::View::Organization;
use CGI::Office::Contacts::View::Person;
use CGI::Office::Contacts::Donations::View::Report;

use Moose;

extends 'CGI::Office::Contacts::View';

has donations => (is => 'rw', isa => 'CGI::Office::Contacts::Donations::View::Donations');

use namespace::autoclean;

our $VERSION = '1.00';

# -----------------------------------------------

sub BUILD
{
	my($self) = @_;

	# Now CGI::Office::Contacts::View.Build() calls init().

}	# End of BUILD.

# --------------------------------------------------

sub init
{
	my($self) = @_;

	$self -> log(debug => 'Entered init');

	$self -> donations(CGI::Office::Contacts::Donations::View::Donations -> new
	(
		config    => $self -> config,
		db        => $self -> db,
		logger    => $self -> logger,
		session   => $self -> session,
		tmpl_path => $self -> tmpl_path,
	) );

	$self -> notes(CGI::Office::Contacts::View::Notes -> new
	(
		config    => $self -> config,
		db        => $self -> db,
		logger    => $self -> logger,
		session   => $self -> session,
		tmpl_path => $self -> tmpl_path,
	) );

	$self -> organization(CGI::Office::Contacts::View::Organization -> new
	(
		config    => $self -> config,
		db        => $self -> db,
		logger    => $self -> logger,
		session   => $self -> session,
		tmpl_path => $self -> tmpl_path,
	) );

	$self -> person(CGI::Office::Contacts::View::Person -> new
	(
		config    => $self -> config,
		db        => $self -> db,
		logger    => $self -> logger,
		session   => $self -> session,
		tmpl_path => $self -> tmpl_path,
	) );

	$self -> report(CGI::Office::Contacts::Donations::View::Report -> new
	(
		config    => $self -> config,
		db        => $self -> db,
		logger    => $self -> logger,
		session   => $self -> session,
		tmpl_path => $self -> tmpl_path,
	) );

} # End of init.

# --------------------------------------------------

__PACKAGE__ -> meta -> make_immutable;

1;
