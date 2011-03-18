package NYPizzaIngredientFactory;

use Moose;
use namespace::autoclean;

use ThinCrustDough;
use MarinaraSauce;
use ReggianoCheese;
use FreshClams;

=head1 DESCRIPTION

	纽约原料工厂

=head1 Roles

	PizzaIngredientFactory

=cut

with 'PizzaIngredientFactory';

=head1 Methods

=cut

sub createDough
{
	return ThinCrustDough->new();
}

sub createSauce
{
	return MarinaraSauce->new();
}

sub createCheese
{
	return ReggianoCheese->new();
}

sub createVeggies
{
	my @veggies = (Garlic->new(), Onion->new(), Mushroom->new(), RedPepper->new());
	
	return @veggies;
}

sub createPepperoni
{
	return SlicedPepperoni->new();
}

sub createClam
{
	return FreshClams->new();
}

no Moose;
__PACKAGE__->meta->make_immutable;