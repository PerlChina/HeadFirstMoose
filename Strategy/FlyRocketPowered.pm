package FlyRocketPowered;

use Moose;

=head1 roles

=cut

with 'FlyBehavior';

=head1 methods

=cut

sub fly
{
	print "I'm flying with a rocket!\n";
}

no Moose;
__PACKAGE__->meta->make_immutable;