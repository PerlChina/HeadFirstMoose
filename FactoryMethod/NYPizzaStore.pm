package NYPizzaStore;

use Moose;
use namespace::autoclean;

use NYStyleCheesePizza;
#use NYStyleVeggiePizza;
#use NYStyleClamPizza;
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
	
	if ($item eq 'cheese')
	{
		return NYStyleCheesePizza->new();
	}
	elsif ($item eq 'veggie')
	{
		return NYStyleVeggiePizza->new();
	}
	elsif ($item eq 'clam')
	{
		return NYStyleClamPizza->new();
	}
	elsif ($item eq 'pepperoni')
	{
		return NYStylePepperoniPizza->new();
	}
	else
	{
		return;
	}
}

no Moose;
__PACKAGE__->meta->make_immutable;