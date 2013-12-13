package Mock::Person::DE;

# ABSTRACT: Support module to generate German names
# ENCODING: UTF-8

=head1 DESCRIPTION

Data for this module was found on these pages:

=over

=item B<Last names>

L<about.com|http://german.about.com/od/names/a/German-Surnames.htm>

=item B<Middle names>

There's usually no distinction between a first and middle name in Germany.

=item B<First names>

L<indiachildnames.com|http://www.indiachildnames.com/top100/germannames.html>

=back

=cut

sub get_male_first_names {
    return qw(
        Adam
        Adrian
        Alex
        Alexander
        Alexandre
        Ali
        Amin
        Andreas
        Andy
        Anton
        Ben
        Cedric
        Chris
        Christian
        Claus
        Daniel
        David
        Dennis
        Dominic
        Dominik
        Fabian
        Fabio
        Felix
        Florian
        Frank
        Freddy
        Frederic
        Gregor
        Hans
        Henry
        Hermann
        Ingo
        Jan
        Jasper
        Jean
        Joe
        Jonas
        Jonathan
        Julian
        Kai
        Kay
        Kevin
        Lars
        Leon
        Lucas
        Ludwig
        Lukas
        Manuel
        Marcel
        Marco
        Marcus
        Mark
        Markus
        Martin
        Marvin
        Matthias
        Max
        Maximilian
        Micha
        Michael
        Moeppel
        Nick
        Nico
        Niklas
        Nils
        Pascal
        Patrick
        Paul
        Peter
        Phil
        Philipp
        Ralf
        Raoul
        Ray
        Rene
        Rico
        Robert
        Robin
        Ryan
        Sami
        Samuel
        Sebastian
        Simon
        Someone
        Stefan
        Steffen
        Stephan
        Sven
        Thomas
        Till
        Tim
        Timo
        Tobias
        Tom
        Victor
        Vincent
        Vinz
        Virgil
        Willem
        Yannik
    );
}

sub get_female_first_names {
    return qw(
        Alexandra
        Amelie
        Andrea
        Angela
        Anja
        Anjeli
        Anna
        Anne
        Anni
        Annika
        Antonia
        Bianca
        Carina
        Caro
        Carolin
        Charlotte
        Christin
        Christina
        Clara
        Claudia
        Daniela
        Diana
        Emma
        Esther
        Eva
        Franzi
        Franziska
        Gabi
        Hanna
        Hannah
        Helene
        Ina
        Isabell
        Jacqueline
        Jana
        Janina
        Janine
        Jasmin
        Jennifer
        Jenny
        Jessica
        Johanna
        Judith
        Jule
        Julia
        Julie
        Kate
        Katharina
        Kathi
        Kathrin
        Katja
        Kim
        Kristin
        Kristina
        Lara
        Laura
        Lea
        Lena
        Leonie
        Lina
        Linda
        Lisa
        Luisa
        Maike
        Mara
        Maria
        Marie
        Marina
        Melanie
        Meli
        Melissa
        Michelle
        Miriam
        Nadine
        Nicole
        Nina
        Pia
        Ramona
        Rebecca
        Rieke
        Sabrina
        Sandra
        Sara
        Sarah
        Saskia
        Silke
        Simone
        Sonja
        Sophia
        Sophie
        Stefanie
        Steffi
        Stella
        Stephanie
        Svenja
        Teresa
        Theresa
        Tina
        Vanessa
        Verena
    );
}

sub get_male_last_names {
    return qw(
        Müller
        Schmidt
        Schneider
        Fischer
        Weber
        Schäfer
        Meyer
        Wagner
        Becker
        Bauer
        Hoffmann
        Schulz
        Koch
        Richter
        Klein
        Wolf
        Schröder
        Neumann
        Braun
        Werner
        Schwarz
        Hofmann
        Zimmermann
        Schmitt
        Hartmann
        Schmid
        Weiß
        Schmitz
        Krüger
        Lange
        Meier
        Walter
        Köhler
        Maier
        Beck
        König
        Krause
        Schulze
        Huber
        Mayer
        Frank
        Lehmann
        Kaiser
        Fuchs
        Herrmann
        Lang
        Thomas
        Peters
        Stein
        Jung
        Möller
        Berger
        Martin
        Friedrich
        Scholz
        Keller
        Groß
        Hahn
        Roth
        Günther
        Vogel
        Schubert
        Winkler
        Schuster
        Jäger
        Lorenz
        Ludwig
        Baumann
        Heinrich
        Otto
        Simon
        Graf
        Kraus
        Krämer
        Böhm
        Schulte
        Albrecht
        Franke
        Winter
        Schumacher
        Vogt
        Haas
        Sommer
        Schreiber
        Engel
        Ziegler
        Dietrich
        Brandt
        Seidel
        Kuhn
        Busch
        Horn
        Arnold
        Kühn
        Bergmann
        Pohl
        Pfeiffer
        Wolff
        Voigt
        Sauer
    );
}

sub get_female_last_names {
    return get_male_last_names();
}

sub get_male_middle_names {
    return get_male_first_names();
}

sub get_female_middle_names {
    return get_female_first_names();
}

sub generate_name {
    my ($self, %params) = @_;

    return $params{first}
        . " " . $params{middle}
        . " " . $params{last}
        ;
}

1;
