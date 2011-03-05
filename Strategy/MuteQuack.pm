package MuteQuack;

use Moose;

=head1 roles

=cut

with 'QuackBehavior';

=head1 methods

=cut

sub quack
{
	print "<< Silence >>\n";
}

no Moose;
__PACKAGE__->meta->make_immutable;