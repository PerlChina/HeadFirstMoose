package Squeak;

use Moose;

=head1 roles

=cut

with 'QuackBehavior';

=head1 methods

=cut

sub quack
{
	print "Squeak\n";
}

no Moose;
__PACKAGE__->meta->make_immutable;