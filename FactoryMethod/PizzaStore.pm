package PizzaStore;

use Moose::Role;
use namespace::autoclean;

=head1 attributes

=cut

has 'pizza' => (
	is => 'ro',
	isa => 'Pizza',
	writer => 'setPizza',
);

=head1 Methods

=cut

sub orderPizza
{
	my $self = shift;
	my $type = shift;
	
	my $pizza = $self->createPizza($type);
	
	$pizza->prepare();
	$pizza->bake();
	$pizza->cut();
	$pizza->box();
	
	return $pizza;
}

=head1 Abstract Methods

=cut

requires qw/createPizza/;

1;