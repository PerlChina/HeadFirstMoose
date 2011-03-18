package ChicagoPizzaStore;

use Moose;
use namespace::autoclean;

use CheesePizza;
#use VeggiePizza;
use ClamPizza;
#use PepperoniPizza;

=head1 Roles

	PizzaStore
	
=cut

with 'PizzaStore';

=head1 Methods

=cut

sub createPizza
{
	my $self = shift;
	my $item = shift;
	
	my $pizza = undef;
	my $ingredientFactory = NYPizzaIngredientFactory->new();
	
	if ($item eq 'cheese')
	{
		$pizza = CheesePizza->new(ingredientFactory => $ingredientFactory);
		$pizza->setName('Chicago Style Cheese Pizza');
	}
	elsif ($item eq 'veggie')
	{
		$pizza = VeggiePizza->new(ingredientFactory => $ingredientFactory);
		$pizza->setName('Chicago Style Veggie Pizza');
	}
	elsif ($item eq 'clam')
	{
		$pizza = ClamPizza->new(ingredientFactory => $ingredientFactory);
		$pizza->setName('Chicago Style Clam Pizza');
	}
	elsif ($item eq 'pepperoni')
	{
		$pizza = PepperoniPizza->new(ingredientFactory => $ingredientFactory);
		$pizza->setName('Chicago Style Pepperoni Pizza');
	}
	
	return $pizza;
}

no Moose;
__PACKAGE__->meta->make_immutable;