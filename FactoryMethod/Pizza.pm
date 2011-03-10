package Pizza;

use Moose::Role;
use namespace::autoclean;

=head1 Attributes

	name
	dough
	sauce
	toppings

=cut

has 'name' => (
	is => 'ro',
	isa => 'Str',
	writer => 'setName',
);

has 'dough' => (
	is => 'ro',
	isa => 'Str',
	writer => 'setDough',
);

has 'sauce' => (
	is => 'ro',
	isa => 'Str',
	writer => 'setSauce',
);

has 'toppings' => (
	traits => ['Array'],
	is => 'ro',
	isa => 'ArrayRef[Any]',
	builder => '_buildToppings',
	handles => {
		'addTopping' => 'push',
		'getTopping' => 'get',
		'countToppings' => 'count',
	},
);

=head1 Attribute Builder

	_buildToppings

=cut

sub _buildToppings
{
	return [];
}

=head1 Methods

	prepare
	bake
	cut
	box
	getName

=cut

sub prepare
{
	my $self = shift;
	
	print "Preparing " . $self->name() . "\n";
	print "Tossing dough...\n";
	print "Adding sauce...\n";
	print "Adding toppings: \n";
	for (my $i = 0; $i < $self->countToppings(); $i++)
	{
		print "    " . $self->getTopping($i) . "\n";
	}
}

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

1;