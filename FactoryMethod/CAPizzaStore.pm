package CAPizzaStore;

use Moose;
use namespace::autoclean;

#use CAStyleCheesePizza;
#use CAStyleVeggiePizza;
#use CAStyleClamPizza;
#use CAStylePepperoniPizza;

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
		return CAStyleCheesePizza->new();
	}
	elsif ($item eq 'veggie')
	{
		return CAStyleVeggiePizza->new();
	}
	elsif ($item eq 'clam')
	{
		return CAStyleClamPizza->new();
	}
	elsif ($item eq 'pepperoni')
	{
		return CAStylePepperoniPizza->new();
	}
	else
	{
		return;
	}
}

no Moose;
__PACKAGE__->meta->make_immutable;