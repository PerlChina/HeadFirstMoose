package LightOnCommand;

use Moose;
use namespace::autoclean;

=head1 Roles

	Command

=cut

with 'Command';

=head1 Attributes

	light

=cut

has 'light' => (
	is => 'ro',
	isa => 'Light',
	required => 1,
);

=head1 Methods

=cut

sub execute
{
	my $self = shift;
	
	$self->light()->on();
}

no Moose;
__PACKAGE__->meta->make_immutable;