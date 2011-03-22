package SimpleRemoteControl;

use Moose;
use namespace::autoclean;

use Command;

=head1 Attributes

	slot

=cut

has 'slot' => (
	is => 'ro',
	isa => 'Command',
	writer => 'setCommand',
);

=head1 Methods

	buttonWasPressed

=cut

sub buttonWasPressed
{
	my $self = shift;
	
	$self->slot()->execute();
}

no Moose;
__PACKAGE__->meta->make_immutable;