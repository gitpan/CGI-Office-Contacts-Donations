package CGI::Office::Contacts::Donations::Controller::Organization;

use base 'CGI::Office::Contacts::Donations::Controller';
use strict;
use warnings;

use CGI::Office::Contacts::Controller::Exporter::Organization qw/-all/;

# We don't use Moose because we isa CGI::Application.

our $VERSION = '1.00';

# -----------------------------------------------

1;
