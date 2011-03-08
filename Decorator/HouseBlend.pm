package HouseBlend;

use Moose;

=head1 roles

=cut

with 'Beverage';

=head1 attribute builder

=cut

sub _buildDescription
{
	return 'House Blend Coffee';
}

sub cost
{
	my $self = shift;
	
	return 0.89;
}

no Moose;
__PACKAGE__->meta->make_immutable;