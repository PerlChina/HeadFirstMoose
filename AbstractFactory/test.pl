#!/usr/bin/perl

use strict;

use FindBin;
use lib $FindBin::Bin;

use NYPizzaStore;
use ChicagoPizzaStore;

my $nyStore = NYPizzaStore->new();
my $chicagoStore = ChicagoPizzaStore->new();

my $pizza = $nyStore->orderPizza('cheese');
print 'Ethan ordered a ' . $pizza->getName() . "\n\n";

$pizza = $nyStore->orderPizza('clam');
print 'Beckheng ordered a ' . $pizza->getName() . "\n\n";

$pizza = $chicagoStore->orderPizza('cheese');
print 'Joel ordered a ' . $pizza->getName() . "\n\n";

$pizza = $chicagoStore->orderPizza('clam');
print 'iib ordered a ' . $pizza->getName() . "\n\n";