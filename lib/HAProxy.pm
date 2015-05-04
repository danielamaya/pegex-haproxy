package Neuadmin::Files::HAProxy;
BEGIN { $ENV{PERL_PEGEX_AUTO_COMPILE} = 'Neuadmin::Files::HAProxy::Grammar' }
our $VERSION = '0.27';

use Pegex::Base;

use Pegex::Parser;
use Neuadmin::Files::HAProxy::Grammar;
use Neuadmin::Files::HAProxy::Data;

sub load {
  my ($self, $json) = @_;
  Pegex::Parser->new(
    grammar =>  Neuadmin::Files::HAProxy::Grammar->new,
    receiver => Neuadmin::Files::HAProxy::Data->new,
    # debug => 1,
  )->parse($json);
}

1;
