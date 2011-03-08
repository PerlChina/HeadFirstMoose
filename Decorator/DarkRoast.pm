package DarkRoast;

use Moose;

=head1 roles

	Beverage

=cut

with 'Beverage';

=head1 attribute builder

=cut

sub _buildDescription
{
	return 'Dark Roast Cofee';
}

=head1 methods

=head2 cost

=cut

sub cost
{
	return 0.99;
}

no Moose;
__PACKAGE__->meta->make_immutable;