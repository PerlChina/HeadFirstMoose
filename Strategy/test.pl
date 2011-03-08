#!/usr/bin/perl

use strict;

use FindBin;
use lib $FindBin::Bin;

use MallardDuck;
use ModelDuck;
use FlyRocketPowered;

my $mallard = MallardDuck->new();
$mallard->display();
$mallard->performQuack();
$mallard->performFly();

print "\n";

my $model = ModelDuck->new();
$model->display();
$model->performFly();
$model->setFlyBehavior(FlyRocketPowered->new());
$model->performFly();