package Mock::Person;

# ABSTRACT: generate random person names
# ENCODING: UTF-8

use strict;
use warnings FATAL => 'all';
use utf8;
use open qw(:std :utf8);

use Carp;

=head1 SYNOPSIS

    use open qw(:std :utf8);

    use Mock::Person;

    # This will create person with randomly selected name
    my $person = Mock::Person->new(
        sex => "male",
        country => "us",
    );

    $person->get_first_name(); # For example, it can be 'John'
    $person->get_last_name(); # 'Smith', or some other name

    # The method will die if there is no middle name in that country
    $person->get_middle_name();

    $person->has_middle_name(); # To check if there is middle name

    $person->get_name(); # 'John Smith'

    $person->get_sex(); # 'male'
    $person->get_country(); # 'us'

Mock::Person uses Semantic Versioning standart for version numbers.
Please visit L<http://semver.org/> to find out all about this great thing.

=cut

my $true = 1;
my $false = '';

=method new

The constructor. It recieves hash of parametes. All parameters are mandatory.

=over

=item B<sex>

Sets sex of the person. Can be 'male' or 'female'.

=item B<country>

Sets the ethnic group of person's name.

The value is a two-letter country code ISO 3166-1 alpha-2.
L<http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2>.

=back

    my $person = Mock::Person->new(
        sex => "male",
        country => "us",
    );

=cut

sub new {
    my ($class, %params) = @_;

    my $sex = lc(delete $params{sex});
    my @known_sexes = qw(male female);
    croak "Expected sex to be one of " . join(", ", @known_sexes) . ". Stopped" if not grep {$_ eq $sex} @known_sexes;

    my $country = lc(delete $params{country});

    my $plugin = "Mock::Person::" . uc($country);
    eval "require $plugin" or croak sprintf("Sorry, but country with code %s is not supported. Stopped", uc($country));

    my $self = {};
    bless $self, $class;

    foreach my $part (qw(first middle last)) {
        my $method = "get_${sex}_${part}_names";

        if ($plugin->can($method)) {
            my @list = $plugin->$method;
            $self->{"_${part}_name"} = $list[rand @list];
            $self->{_has_middle_name} = $true if $part eq 'middle';
        } elsif ($part eq 'middle') {
            $self->{_has_middle_name} = $false;
        } else {
            croak sprintf(
                "Error in code. Can't find method %s in plugin %s. Stopped",
                $method,
                $plugin,
            );
        }
    }

    $self->{_name} = $plugin->generate_name(
        first => $self->{_first_name},
        last => $self->{_last_name},
        (
            $self->{_has_middle_name} ? (middle => $self->{_middle_name}) : ()
        ),
    );


    $self->{_country} = $country;
    $self->{_sex} = $sex;

    return $self;
}

=method get_first_name
=cut

sub get_first_name { return $_[0]->{_first_name}; }

=method get_last_name
=cut

sub get_last_name { return $_[0]->{_last_name}; }

=method get_middle_name
=cut

sub get_middle_name {
    my ($self) = @_;

    if ($self->has_middle_name()) {
        return $self->{_middle_name};
    } else {
        croak sprintf("Person for the country '%s' don't have middle name", $self->get_country());
    }
}

=method has_middle_name
=cut

sub has_middle_name { return $_[0]->{_has_middle_name}; }

=method get_name
=cut

sub get_name { return $_[0]->{_name}; }

=method get_country

Returns two-letter country code in lowercase. Example 'en', 'ru'.

=cut

sub get_country { return $_[0]->{_country}; }

=method get_sex

Returns 'male' or 'female'.

=cut

sub get_sex { return $_[0]->{_sex}; }

=head1 SEE ALSO

=over

=item * L<Data::RandomPerson>

=back

=head1 CONTRIBUTORS

The list is in alphabetical order.

=over 4

=item * Gene Boggs (GENE)

=item * Toby Inkster (TOBYINK)

=item * Сергей Романов (SROMANOV)

=back

=head1 SOURCE CODE

The source code for this module is hosted on GitHub http://github.com/bessarabov/Mock-Person

=cut

1;
