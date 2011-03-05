package Quack;

use Moose;

=head1 roles

=cut

with 'QuackBehavior';

=head1 methods

=cut

sub quack
{
	print "Quack\n";
}

no Moose;
__PACKAGE__->meta->make_immutable;