package Duck;

use Moose::Role;

=head1 attribute

=cut

has 'flyBehavior' => (
	is => 'ro',
	isa => 'FlyBehavior',
	writer => 'setFlyBehavior',
);

has 'quackBehavior' => (
	is => 'rw',
	isa => 'QuackBehavior',
);

=head1 methods

=head2 display

=cut

requires 'display';

=head2 performFly

=cut

sub performFly
{
	my $self= shift;
	$self->flyBehavior->fly();
}

=head2 performQuack

=cut

sub performQuack
{
	my $self = shift;
	$self->quackBehavior->quack();
}

=head2 setQuackBehavior

=cut

sub setQuackBehavior
{
	my $self = shift;
	my $qb = shift;
	
	$self->quackBehavior($qb);
}

=head2 swim

=cut

sub swim
{
	print "All ducks float, even decoys!\n";
}

1;