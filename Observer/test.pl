#!/usr/bin/perl

use strict;

use FindBin;
use lib $FindBin::Bin;

use WeatherData;
use CurrentConditionsDisplay;

my $weatherData = WeatherData->new();

my $currentConditionsDisplay = CurrentConditionsDisplay->new(weatherData => $weatherData);

$weatherData->setMeasurements(80, 65, 30.4);
$weatherData->setMeasurements(82, 70, 29.2);
$weatherData->setMeasurements(78, 90, 29.2);