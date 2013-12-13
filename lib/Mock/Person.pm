package Mock::Person;

# ABSTRACT: generates random last, first and middle name of person.
# ENCODING: UTF-8

use strict;
use warnings;
use utf8;

=head1 SYNOPSIS

    binmode STDOUT, ":utf8";
    use Mock::Person;
    print Mock::Person::name(sex => "male", country => "ru") . "\n";
    # Will print something like "Блохин Лев Владимирович"

Mock::Person uses Semantic Versioning standart for version numbers.
Please visit L<http://semver.org/> to find out all about this great thing.

=cut

=head1 GENERAL FUNCTIONS

=head2 name

Recieves optional hash of parametes:

=over

=item B<sex>

Sets sex of the person. Can be 'male' or 'female'. Default value is 'male'.

=item B<country>

Sets the ethnic group of person's name. Default value is 'ru'.

=back

Returns scalar with generated name.

=cut
sub name {
    my (%h) = @_;

    my $sex = $h{sex};
    my $country= $h{country};

    $sex ||= "male";
    $country ||= "ru";

    if (uc($country) eq "RU") {
        use Mock::Person::RU;
        return Mock::Person::RU::name($sex);
    }
    elsif (uc($country) eq "US") {
        use Mock::Person::US;
        return Mock::Person::US::name($sex);
    };
}

=head1 CONTRIBUTORS

=over 4

=item * Gene Boggs (GENE)

=item * Сергей Романов (SROMANOV)

=back

=head1 SOURCE CODE

The source code for this module is hosted on GitHub http://github.com/bessarabov/Mock-Person

=cut

1;
