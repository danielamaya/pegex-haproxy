#!/usr/bin/env perl
use strict;
use Pegex::Parser;
use lib 'lib';
use Neuadmin::Files::HAProxy::Grammar;
use Data::Dumper;

{
    package Neuadmin::Files::HAProxy::AST;
    use base 'Pegex::Tree';
    use Data::Dumper;
    
    sub got_global {
      my ($self,$list) = @_;
      print Dumper $list;
    }
    sub got_default {
      my ($self,$list) = @_;
      print Dumper $list;
    }
}

my $infile = shift or
    die "No input file specified.\n";

open my $in, $infile or
    die "Cannot open $infile for reading: $!\n";

my $src = do { local $/; <$in> };

my $ast =
  Pegex::Parser->new(
    grammar => Neuadmin::Files::HAProxy::Grammar->new,
    receiver => Neuadmin::Files::HAProxy::AST->new,
  )->parse($src);

print Dumper $ast;
