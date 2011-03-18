package Pizza;

use Moose::Role;
use namespace::autoclean;

=head1 Attributes

	name
	dough
	sauce
	veggies
	cheese
	pepperoni
	clam

=cut

has 'name' => (
	is => 'ro',
	isa => 'Str',
	writer => 'setName',
);

has 'dough' => (
	is => 'ro',
	isa => 'Dough',
	writer => 'setDough',
);

has 'sauce' => (
	is => 'ro',
	isa => 'Sauce',
	writer => 'setSauce',
);

has 'veggies' => (
	traits => ['Array'],
	is => 'ro',
	isa => 'ArrayRef[Any]',
	builder => '_buildVeggies',
	handles => {
		'addVeggie' => 'push',
		'getVeggie' => 'get',
		'countVeggies' => 'count',
	},
);

has 'cheese' => (
	is => 'ro',
	isa => 'Cheese',
	writer => 'setCheese',
);

has 'pepperoni' => (
	is => 'ro',
	writer => 'setPepperoni',
);

has 'clam' => (
	is => 'ro',
	isa => 'Clams',
	writer => 'setClam',
);

=head1 Attribute Builder

	_buildVeggies

=cut

sub _buildVeggies
{
	return [];
}

=head1 Methods

	bake
	cut
	box
	getName

=cut

sub bake
{
	my $self = shift;
	
	print "Bake for 25 minutes at 350\n";
}

sub cut
{
	my $self = shift;
	
	print "Cutting the pizza into diagonal slices\n";
}

sub box
{
	my $self = shift;
	
	print "Place pizza in offical PizzaStore box\n";
}

sub getName
{
	my $self = shift;
	
	return $self->name();
}

sub toString
{
	
}

=head1 Abstract Methods

	prepare

=cut

requires 'prepare';

1;