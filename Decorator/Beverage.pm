package Beverage;

use Moose::Role;

=head1 attributes

=head2 description

=cut

has 'description' => (
	is => 'ro',
	builder => '_buildDescription',
);

=head1 attribute builder

=head2 _buildDescription

=cut

sub _buildDescription
{
	return 'Unknown Beverage';
}

=head1 methods

=head2 getDescription

=cut

sub getDescription
{
	my $self = shift;
	
	return $self->description();
}

=head1 abstract methods

=head2 cost

=cut

requires 'cost';

1;