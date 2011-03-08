package HouseBlend;

use Moose;

=head1 roles

	Beverage

=cut

with 'Beverage';

=head1 attribute builder

=cut

sub _buildDescription
{
	return 'House Blend Coffee';
}

=head1 methods

=head2 cost

=cut

sub cost
{
	my $self = shift;
	
	return 0.89;
}

no Moose;
__PACKAGE__->meta->make_immutable;