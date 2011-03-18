package PizzaIngredientFactory;

use Moose::Role;
use namespace::autoclean;

=head1 DESCRIPTION

	原料工厂

=head1 Abstract Methods

	createDough
	createSauce
	createCheese
	createVeggies
	createPepperoni
	createClam

=cut

requires 'createDough', 'createSauce', 'createCheese';
requires 'createVeggies', 'createPepperoni', 'createClam';

1;