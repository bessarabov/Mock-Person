package Mock::Person;

=encoding UTF-8
=cut

=head1 NAME

Mock::Person - generates random last, first and middle name of person.

=cut

use strict;
use warnings;
use utf8;
our $VERSION = '0.01';

=head1 SYNOPSIS 

    binmode STDOUT, ":utf8"; 
    use Mock::Person;
    print Mock::Person::name(sex => "male") . "\n";
    # Will print something like "Блохин Лев Владимирович"

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
    };

    return Mock::Person::RU::name($sex);
}

=head1 AUTHOR

Ivan Bessarabov, C<< <ivan@bessarabov.ru> >>

=head1 SOURCE CODE 

The source code for this module is hosted on GitHub http://github.com/bessarabov/Mock-Person

=cut

1;
