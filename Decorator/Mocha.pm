package Mocha;

use Moose;

=head1 roles

=cut

with 'CondimentDecorator';

=head1 methods

=cut

sub getDescription
{
	my $self = shift;
	
	return $self->beverage->getDescription() . ', Mocha';
}

sub cost
{
	my $self = shift;
	
	return 0.20 + $self->beverage->cost();
}

no Moose;
__PACKAGE__->meta->make_immutable;