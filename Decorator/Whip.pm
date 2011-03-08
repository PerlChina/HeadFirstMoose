package Whip;

use Moose;

=head1 roles

	CondimentDecorator

=cut

with 'CondimentDecorator';

=head1 methods

=head2 getDescription

=cut

sub getDescription
{
	my $self = shift;
	
	return $self->beverage->getDescription() . ', Whip';
}

=head2 cost

=cut

sub cost
{
	my $self = shift;
	
	return 0.10 + $self->beverage->cost();
}

no Moose;
__PACKAGE__->meta->make_immutable;