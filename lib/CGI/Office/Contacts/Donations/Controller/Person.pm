package CGI::Office::Contacts::Donations::Controller::Person;

use base 'CGI::Office::Contacts::Donations::Controller';
use strict;
use warnings;

use CGI::Office::Contacts::Controller::Exporter::Person qw/-all/;

# We don't use Moose because we isa CGI::Application.

our $VERSION = '1.01';

# -----------------------------------------------

1;
