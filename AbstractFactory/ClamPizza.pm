package ClamPizza;

use Moose;
use namespace::autoclean;

=head1 Roles

	Pizza

=cut

with 'Pizza';

=head1 Attributes

	ingredientFactory

=cut

has 'ingredientFactory' => (
	is => 'ro',
	isa => 'PizzaIngredientFactory',
	required => 1,
);

=head1 Methods

=cut

sub prepare
{
	my $self = shift;
	
	print "Preparing " . $self->name() . "\n";
	$self->setDough($self->ingredientFactory->createDough());
	$self->setSauce($self->ingredientFactory->createSauce());
	$self->setCheese($self->ingredientFactory->createCheese());
	$self->setClam($self->ingredientFactory->createClam());
}

no Moose;
__PACKAGE__->meta->make_immutable;