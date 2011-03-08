package Decaf;

use Moose;

=head1 roles

=cut

with 'Beverage';

=head1 attribute builder

=cut

sub _buildDescription
{
	return 'Decaf Cofee';
}

=head1 methods

=cut

sub cost
{
	return 1.05;
}

no Moose;
__PACKAGE__->meta->make_immutable;