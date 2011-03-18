package NYPizzaStore;

use Moose;
use namespace::autoclean;

use NYPizzaIngredientFactory;
use CheesePizza;
#use NYStyleVeggiePizza;
use ClamPizza;
#use NYStylePepperoniPizza;

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
		$pizza->setName('New York Style Cheese Pizza');
	}
	elsif ($item eq 'veggie')
	{
		$pizza = VeggiePizza->new(ingredientFactory => $ingredientFactory);
		$pizza->setName('New York Style Veggie Pizza');
	}
	elsif ($item eq 'clam')
	{
		$pizza = ClamPizza->new(ingredientFactory => $ingredientFactory);
		$pizza->setName('New York Style Clam Pizza');
	}
	elsif ($item eq 'pepperoni')
	{
		$pizza = PepperoniPizza->new(ingredientFactory => $ingredientFactory);
		$pizza->setName('New York Style Pepperoni Pizza');
	}
	
	return $pizza;
}

no Moose;
__PACKAGE__->meta->make_immutable;