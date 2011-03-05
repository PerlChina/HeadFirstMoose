package ModelDuck;

use Moose;

use FlyNoWay;
use Quack;

=head1 roles

=cut

with 'Duck';

=head1 constructor

=cut

sub BUILD
{
	my $self = shift;
	
	$self->flyBehavior(FlyNoWay->new());
	$self->quackBehavior(Quack->new());
}

=head1 methods

=cut

sub display
{
	print "I'm a model duck\n";
}

no Moose;
__PACKAGE__->meta->make_immutable;