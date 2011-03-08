#!/usr/bin/perl

use strict;

use FindBin;
use lib $FindBin::Bin;

use Espresso;
use DarkRoast;
use HouseBlend;
use Decaf;

use Mocha;
use Whip;
use Soy;

my $beverage = Espresso->new();
print $beverage->getDescription() . ' $' . $beverage->cost(), "\n";

my $beverage2 = DarkRoast->new();
$beverage2 = Mocha->new(beverage => $beverage2);
$beverage2 = Mocha->new(beverage => $beverage2);
$beverage2 = Whip->new(beverage => $beverage2);
print $beverage2->getDescription() . ' $' . $beverage2->cost(), "\n";

my $beverage3 = HouseBlend->new();
$beverage3 = Soy->new(beverage => $beverage3);
$beverage3 = Mocha->new(beverage => $beverage3);
$beverage3 = Whip->new(beverage => $beverage3);
print $beverage3->getDescription() . ' $' . $beverage3->cost(), "\n";

my $beverage4 = Decaf->new();
$beverage4 = Soy->new(beverage => $beverage4);
$beverage4 = Whip->new(beverage => $beverage4);
print $beverage4->getDescription() . ' $' . $beverage4->cost(), "\n";