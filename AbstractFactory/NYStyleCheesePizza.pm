package NYStyleCheesePizza;

use Moose;

=head1 Roles

=cut

with 'Pizza';

=head1 Constructor Method

=cut

sub BUILD
{
	my $self = shift;
	
	$self->setName('NY Style Sauce and Cheese Pizza');
	$self->setDough('Thin Crust Dough');
	$self->setSauce('Marinara Sauce');
	
	$self->addTopping('Grated Reggiano Cheese');
}

no Moose;
__PACKAGE__->meta->make_immutable;