package Whip;

use Moose;

=head1 roles

=cut

with 'CondimentDecorator';

=head1 methods

=cut

sub getDescription
{
	my $self = shift;
	
	return $self->beverage->getDescription() . ', Whip';
}

sub cost
{
	my $self = shift;
	
	return 0.10 + $self->beverage->cost();
}

no Moose;
__PACKAGE__->meta->make_immutable;