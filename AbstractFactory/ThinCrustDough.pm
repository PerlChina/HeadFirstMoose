package ThinCrustDough;

use Moose;

=head1 Roles

	Dough

=cut

with 'Dough';

no Moose;
__PACKAGE__->meta->make_immutable;