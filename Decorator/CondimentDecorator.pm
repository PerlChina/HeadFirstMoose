package CondimentDecorator;

use Moose::Role;

=head1 roles

	Beverage

=cut

with 'Beverage';

=head1 attributes

	beverage, 我将此属性在此类定义，而非扩展类中定义

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