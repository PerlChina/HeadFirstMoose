#!/usr/bin/perl

use strict;

use FindBin;
use lib $FindBin::Bin;

use SimpleRemoteControl;
use Light;
use LightOnCommand;

my $remote = SimpleRemoteControl->new();
my $light = Light->new();
my $lightOn = LightOnCommand->new(light => $light);

$remote->setCommand($lightOn);
$remote->buttonWasPressed();