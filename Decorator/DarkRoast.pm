package DarkRoast;

use Moose;

=head1 roles

=cut

with 'Beverage';

=head1 attribute builder

=cut

sub _buildDescription
{
	return 'Dark Roast Cofee';
}

=head1 methods

=cut

sub cost
{
	return 0.99;
}

no Moose;
__PACKAGE__->meta->make_immutable;