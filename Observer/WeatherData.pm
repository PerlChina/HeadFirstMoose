package WeatherData;

use Moose;

=head1 注意事項

	由于使用ArrayRef[Observer]做类型判断，所以要以use Observer加载模块，才能使代码正常运行

=cut

use Observer;

=head1 roles

=cut

with 'Subject';

=head1 attributes

=cut

has 'observers' => (
	traits => ['Array'],
	is => 'ro',
	isa => 'ArrayRef[Observer]',
	builder => '_build_observers',
	handles => {
		'add_observer' => 'push',
		'delete_observer' => 'delete',
		'count_observers' => 'count',
		'get_observer' => 'get',
	},
);

has 'temperature' => (
	is => 'ro',
	writer => 'set_temperature',
);

has 'humidity' => (
	is => 'ro',
	writer => 'set_humidity',
);

has 'pressure' => (
	is => 'ro',
	writer => 'set_pressure',
);

=head1 constructor

=cut

sub BUILD
{
	my $self = shift;
	
#	$self->observers([]);
}

=head1 attribute builder

=cut

sub _build_observers
{
	return [];
}


=head1 methods

=cut

sub registerObserver
{
	my $self = shift;
	my $o = shift;
	
	$self->add_observer($o)
}

sub removeObserver
{
	my $self = shift;
	my $o = shift;
	
	my $index = undef;
	for (my $i = 0; $i < $self->count_observers; $i++)
	{
		if (ref $o eq ref $self->get_observer($i))
		{
			$index = $i;
			last;
		}
	}
	if (defined $index)
	{
		$self->delete_observer($index);
	}
}

sub notifyObservers
{
	my $self = shift;
	
	for (my $i = 0; $i < $self->count_observers; $i++)
	{
		$self->get_observer($i)->update($self->temperature, $self->humidity, $self->pressure);
	}
}

sub measurementsChanged
{
	my $self = shift;
	
	$self->notifyObservers;
}

sub setMeasurements
{
	my $self = shift;
	my $temperature = shift;
	my $humidity = shift;
	my $pressure = shift;
	
	$self->set_temperature($temperature);
	$self->set_humidity($humidity);
	$self->set_pressure($pressure);
	
	$self->measurementsChanged();
}

no Moose;
__PACKAGE__->meta->make_immutable;