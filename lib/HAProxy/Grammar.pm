package Neuadmin::Files::HAProxy::Grammar;
use Pegex::Base;
extends 'Pegex::Grammar';

use constant file => 'lib/Neuadmin/Files/pgx/haproxy2.pgx';

sub make_tree {   # Generated/Inlined by Pegex::Grammar (0.60)
  {
    '+grammar' => 'haproxy',
    '+toprule' => 'global',
    '+version' => '0.0.1',
    'argument' => {
      '.rgx' => qr/\G.*\r?\n/
    },
    'command' => {
      '.rgx' => qr/\G\s*(chroot)\s*/
    },
    'global' => {
      '.all' => [
        {
          '.rgx' => qr/\G\s*global\s*/
        },
        {
          '.rgx' => qr/\G\s*\r?\n\s*/
        },
        {
          '.ref' => 'command',
        },
        {
          '+min' => 0,
          '.ref' => 'argument'
        }
      ]
    },
    'defaults' => {
      '.all' => [
        {
          '.rgx' => qr/\G\s*defaults\s*/
        },
        {
          '.rgx' => qr/\G\s*\r?\n\s*/
        },
        {
          '.ref' => 'command',
        },
        {
          '+min' => 0,
          '.ref' => 'argument'
        }
      ]
    }
  }
}
1;
