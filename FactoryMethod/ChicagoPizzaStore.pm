package ChicagoPizzaStore;

use Moose;
use namespace::autoclean;

use ChicagoStyleCheesePizza;
#use ChicagoStyleVeggiePizza;
#use ChicagoStyleClamPizza;
#use ChicagoStylePepperoniPizza;

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
		return ChicagoStyleCheesePizza->new();
	}
	elsif ($item eq 'veggie')
	{
		return ChicagoStyleVeggiePizza->new();
	}
	elsif ($item eq 'clam')
	{
		return ChicagoStyleClamPizza->new();
	}
	elsif ($item eq 'pepperoni')
	{
		return ChicagoStylePepperoniPizza->new();
	}
	else
	{
		return;
	}
}

no Moose;
__PACKAGE__->meta->make_immutable;