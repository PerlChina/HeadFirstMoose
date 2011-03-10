package ChicagoStyleCheesePizza;

use Moose;

=head1 Roles

	Pizza

=cut

with 'Pizza';

=head1 Constructor Method

=cut

sub BUILD
{
	my $self = shift;
	
	$self->setName('Chicago Style Deep Dish Cheese Pizza');
	$self->setDough('Extra Thick Crust Dough');
	$self->setSauce('Plum Tomato Sauce');
	
	$self->addTopping('Shredded Mozzarella Cheese');
}

=head1 Methods

	cut

=cut

sub cut
{
	my $self = shift;
	
	print "Cutting the pizza into square slices\n";
}

no Moose;
__PACKAGE__->meta->make_immutable;