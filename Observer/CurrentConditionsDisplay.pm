package CurrentConditionsDisplay;

use Moose;

=head1 roles

=cut

with 'Observer', 'DisplayElement';

=head1 attributes

=cut

has 'temperature' => (
	is => 'ro',
	writer => 'set_temperature',
);

has 'humidity' => (
	is => 'ro',
	writer => 'set_humidity',
);

has 'weatherData' => (
	is => 'ro',
	required => 1,
	isa => 'Subject',
);

=head1 constructor

=cut

sub BUILD
{
	my $self = shift;
	
	$self->weatherData->registerObserver($self);
}

=head1 methods

=cut

sub update
{
	my $self = shift;
	my $temperature = shift;
	my $humidity = shift;
	
	$self->set_temperature($temperature);
	$self->set_humidity($humidity);
	
	$self->display();
}

sub display
{
	my $self = shift;
	
	print "Current conditions: ", $self->temperature, "F degrees and ", 
		$self->humidity, "% humidity", "\n";
}

no Moose;
__PACKAGE__->meta->make_immutable;