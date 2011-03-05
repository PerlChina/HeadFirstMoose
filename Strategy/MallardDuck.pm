package MallardDuck;

use Moose;

use Quack;
use FlyWithWings;

=head1 rolse

=cut

with 'Duck';

=head1 constructor

=cut

sub BUILD
{
	my $self = shift;
	
	$self->flyBehavior(FlyWithWings->new());
	$self->quackBehavior(Quack->new());
}

=head1 methods

=head2 display

=cut

sub display{
	print "I'm real Mallard Duck\n";
}

no Moose;
__PACKAGE__->meta->make_immutable;