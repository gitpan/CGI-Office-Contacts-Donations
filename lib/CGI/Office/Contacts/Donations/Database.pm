package CGI::Office::Contacts::Donations::Database;

use CGI::Office::Contacts::Donations::Database::Donations;
use CGI::Office::Contacts::Donations::Database::Util;

use Moose;

extends 'CGI::Office::Contacts::Database';

has donations => (is => 'rw', isa => 'CGI::Office::Contacts::Donations::Database::Donations');

use namespace::autoclean;

our $VERSION = '1.00';

# -----------------------------------------------

sub BUILD
{
	my($self) = @_;

	$self -> donations(CGI::Office::Contacts::Donations::Database::Donations -> new
	(
		db     => $self,
		logger => $self -> logger,
	) );

}	# End of BUILD.

# --------------------------------------------------

sub init
{
	my($self) = @_;

	$self -> util(CGI::Office::Contacts::Donations::Database::Util -> new
	(
		db     => $self,
		logger => $self -> logger,
	) );

} # End of init.

# --------------------------------------------------

__PACKAGE__ -> meta -> make_immutable;

1;
