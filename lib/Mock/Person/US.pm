package Mock::Person::US;

# ABSTRACT: Support module to generate American names
# ENCODING: UTF-8

=head1 DESCRIPTION

Data for this module was found on these pages:

=over

=item B<Last names>

L<http://names.mongabay.com/most_common_surnames.htm>

=item B<First names>

L<http://names.mongabay.com/female_names.htm> and
L<http://names.mongabay.com/male_names.htm>

=back

=cut

use strict;
use warnings FATAL => 'all';
use utf8;
use open qw(:std :utf8);

my @last_names = qw(
    Smith
    Johnson
    Williams
    Jones
    Brown
    Davis
    Miller
    Wilson
    Moore
    Taylor
    Anderson
    Thomas
    Jackson
    White
    Harris
    Martin
    Thompson
    García
    Martínez
    Robinson
    Clark
    Rodríguez
    Lewis
    Lee
    Walker
    Hall
    Allen
    Young
    Hernández
    King
    Wright
    López
    Hill
    Scott
    Green
    Adams
    Baker
    González
    Nelson
    Carter
    Mitchell
    Pérez
    Roberts
    Turner
    Phillips
    Campbell
    Parker
    Evans
    Edwards
    Collins
    Stewart
    Sánchez
    Morris
    Rogers
    Reed
    Cook
    Morgan
    Bell
    Murphy
    Bailey
    Rivera
    Cooper
    Richardson
    Cox
    Howard
    Ward
    Torres
    Peterson
    Gray
    Ramírez
    James
    Watson
    Brooks
    Kelly
    Sanders
    Price
    Bennett
    Wood
    Barnes
    Ross
    Henderson
    Coleman
    Jenkins
    Perry
    Powell
    Long
    Patterson
    Hughes
    Flores
    Washington
    Butler
    Simmons
    Foster
    Gonzales
    Bryant
    Alexander
    Russell
    Griffin
    Díaz
    Hayes
);

sub get_male_first_names {
    return qw(
        James
        John
        Robert
        Michael
        William
        David
        Richard
        Charles
        Joseph
        Thomas
        Christopher
        Daniel
        Paul
        Mark
        Donald
        George
        Kenneth
        Steven
        Edward
        Brian
        Ronald
        Anthony
        Kevin
        Jason
        Matthew
        Gary
        Timothy
        José
        Larry
        Jeffrey
        Frank
        Scott
        Eric
        Stephen
        Andrew
        Raymond
        Gregory
        Joshua
        Jerry
        Dennis
        Walter
        Patrick
        Peter
        Harold
        Douglas
        Henry
        Carl
        Arthur
        Ryan
        Roger
        Joe
        Juan
        Jack
        Albert
        Jonathan
        Justin
        Terry
        Gerald
        Keith
        Samuel
        Willie
        Ralph
        Lawrence
        Nicholas
        Roy
        Benjamin
        Bruce
        Brandon
        Adam
        Harry
        Fred
        Wayne
        Billy
        Steve
        Louis
        Jeremy
        Aaron
        Randy
        Howard
        Eugene
        Carlos
        Russell
        Bobby
        Victor
        Martin
        Ernest
        Phillip
        Todd
        Jesse
        Craig
        Alan
        Shawn
        Clarence
        Sean
        Philip
        Chris
        Johnny
        Earl
        Jimmy
        Antonio
    );
}

sub get_female_first_names {
    return qw(
        Mary
        Patricia
        Linda
        Barbara
        Elizabeth
        Jennifer
        Maria
        Susan
        Margaret
        Dorothy
        Lisa
        Nancy
        Karen
        Betty
        Helen
        Sandra
        Donna
        Carol
        Ruth
        Sharon
        Michelle
        Laura
        Sarah
        Kimberly
        Deborah
        Jessica
        Shirley
        Cynthia
        Angela
        Melissa
        Brenda
        Amy
        Anna
        Rebecca
        Virginia
        Kathleen
        Pamela
        Martha
        Debra
        Amanda
        Stephanie
        Carolyn
        Christine
        Marie
        Janet
        Catherine
        Frances
        Ann
        Joyce
        Diane
        Alice
        Julie
        Heather
        Teresa
        Doris
        Gloria
        Evelyn
        Jean
        Cheryl
        Mildred
        Katherine
        Joan
        Ashley
        Judith
        Rose
        Janice
        Kelly
        Nicole
        Judy
        Christina
        Kathy
        Theresa
        Beverly
        Denise
        Tammy
        Irene
        Jane
        Lori
        Rachel
        Marilyn
        Andrea
        Kathryn
        Louise
        Sara
        Anne
        Jacqueline
        Wanda
        Bonnie
        Julia
        Ruby
        Lois
        Tina
        Phyllis
        Norma
        Paula
        Diana
        Annie
        Lillian
        Emily
        Robin
    );
}

sub get_male_middle_names {
    return get_male_first_names();
}

sub get_female_middle_names {
    return get_female_first_names();
}

sub get_male_last_names {
    return @last_names;
}

sub get_female_last_names {
    return @last_names;
}

sub generate_name {
    my ($self, %params) = @_;

    return $params{first}
        . " " . $params{middle}
        . " " . $params{last}
        ;
}

1;
