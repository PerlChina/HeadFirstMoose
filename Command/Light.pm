package Light;

use Moose;
use namespace::autoclean;

=head1 Methods

	on
	off

=cut

sub on
{
	my $self = shift;
	
	print "Light is On\n";
}

sub off
{
	my $self = shift;
}

no Moose;
__PACKAGE__->meta->make_immutable;