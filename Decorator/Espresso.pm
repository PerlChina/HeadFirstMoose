package Espresso;

use Moose;

=head1 roles

=cut

with 'Beverage';

=head1 attribute builder

=cut

sub _buildDescription
{
	return 'Espresso';
}

=head1 methods

=cut

sub cost
{
	my $self = shift;
	
	return 1.99;
}

no Moose;
__PACKAGE__->meta->make_immutable;