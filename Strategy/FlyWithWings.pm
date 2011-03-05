package FlyWithWings;

use Moose;

=head1 roles

=cut

with 'FlyBehavior';

=head1 methods

=cut

sub fly
{
	print "I'm flying!!\n";
}

no Moose;
__PACKAGE__->meta->make_immutable;