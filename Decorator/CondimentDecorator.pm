package CondimentDecorator;

use Moose::Role;

=head1 roles

	Beverage

=cut

with 'Beverage';

=head1 attributes

	beverage

=cut

has 'beverage' => (
	is => 'ro',
	isa => 'Beverage',
	required => 1,
);

=head1 abstract methods

=head2 getDescription

=cut

requires 'getDescription';

1;