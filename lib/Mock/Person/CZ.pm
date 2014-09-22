package Mock::Person::CZ;

# ABSTRACT: Support module to generate Czech names

=head1 DESCRIPTION

Data for this module was found on these pages:

=over

=item B<Last names>

L<cz.wikipedia.org|http://cs.wikipedia.org/wiki/Seznam_nej%C4%8Detn%C4%9Bj%C5%A1%C3%ADch_p%C5%99%C3%ADjmen%C3%AD_v_%C4%8Cesku>

=item B<Middle names>

There's usually no distinction between a first and middle name in the Czech Republic.

=item B<First names>

L<cz.wikipedia.org - male names|http://cs.wikipedia.org/wiki/Seznam_nej%C4%8Dast%C4%9Bj%C5%A1%C3%ADch_mu%C5%BEsk%C3%BDch_jmen_v_%C4%8Cesk%C3%A9_republice>,
L<cs.wikipedia.org - female names|http://cs.wikipedia.org/wiki/Seznam_nej%C4%8Dast%C4%9Bj%C5%A1%C3%ADch_%C5%BEensk%C3%BDch_jmen_v_%C4%8Cesk%C3%A9_republice>.

=back

=cut

sub get_male_first_names {
    return qw(
        Adam
        Alexandr
        Aleš
        Alois
        Antonín
        Bedřich
        Bohumil
        Bohuslav
        Břetislav
        Dalibor
        Daniel
        David
        Denis
        Dominik
        Dušan
        Eduard
        Emil
        Filip
        František
        Ivan
        Ivo
        Jakub
        Jan
        Jaromír
        Jaroslav
        Jindřich
        Jiří
        Josef
        Jozef
        Ján
        Kamil
        Karel
        Kryštof
        Ladislav
        Leoš
        Libor
        Lubomír
        Luboš
        Ludvík
        Luděk
        Lukáš
        Marcel
        Marek
        Marian
        Martin
        Matyáš
        Matěj
        Michael
        Michal
        Milan
        Miloslav
        Miloš
        Miroslav
        Oldřich
        Ondřej
        Otakar
        Patrik
        Pavel
        Petr
        Přemysl
        Radek
        Radim
        Radomír
        Radovan
        René
        Richard
        Robert
        Roman
        Rostislav
        Rudolf
        Samuel
        Stanislav
        Tadeáš
        Tomáš
        Viktor
        Vilém
        Vladimír
        Vladislav
        Vlastimil
        Vojtěch
        Vratislav
        Václav
        Vít
        Vítězslav
        Zbyněk
        Zdeněk
        Šimon
        Štefan
        Štěpán
    );
}

sub get_female_first_names {
    return qw(
        Alena
        Andrea
        Anna
        Barbora
        Božena
        Dagmar
        Dana
        Eliška
        Eva
        Hana
        Helena
        Irena
        Ivana
        Jana
        Jarmila
        Jaroslava
        Jitka
        Jiřina
        Kateřina
        Kristýna
        Lenka
        Libuše
        Lucie
        Ludmila
        Marcela
        Marie
        Markéta
        Marta
        Martina
        Michaela
        Miroslava
        Monika
        Pavla
        Petra
        Tereza
        Veronika
        Vlasta
        Věra
        Zdeňka
        Zuzana
    );
}

sub get_male_last_names {
    return qw(
        Bartoš
        Beneš
        Blažek
        Bláha
        Bureš
        Doležal
        Dostál
        Dušek
        Dvořák
        Fiala
        Havlíček
        Holub
        Horák
        Hrubý
        Hruška
        Hájek
        Janda
        Jelínek
        Kadlec
        Kolář
        Konečný
        Kopecký
        Kovář
        Kratochvíl
        Krejčí
        Král
        Kučera
        Kříž
        Liška
        Mach
        Malý
        Marek
        Mareš
        Matoušek
        Mašek
        Moravec
        Musil
        Müller
        Navrátil
        Nguyen
        Novotný
        Novák
        Němec
        Pavlík
        Pokorný
        Polák
        Pospíšil
        Procházka
        Růžička
        Sedláček
        Soukup
        Staněk
        Svoboda
        Sýkora
        Tichý
        Urban
        Valenta
        Vaněk
        Veselý
        Vlček
        Vávra
        Zeman
        Čech
        Čermák
        Černý
        Říha
        Ševčík
        Šimek
        Štěpánek
        Šťastný
    );
}

sub get_female_last_names {
    return qw(
        Bartošová
        Benešová
        Blažková
        Bláhová
        Burešová
        Doležalová
        Dostálová
        Dvořáková
        Fialová
        Havlíčková
        Holubová
        Horáková
        Hrubá
        Hrušková
        Hájková
        Jandová
        Jelínková
        Kadlecová
        Kolářová
        Konečná
        Kopecká
        Kovářová
        Kratochvílová
        Krejčová
        Krejčí
        Králová
        Kučerová
        Křížová
        Lišková
        Machová
        Malá
        Marešová
        Marková
        Matoušková
        Mašková
        Moravcová
        Musilová
        Müllerová
        Navrátilová
        Nguyen
        Novotná
        Nováková
        Němcová
        Pavlíková
        Pavlíková
        Pokorná
        Poláková
        Pospíšilová
        Procházková
        Růžičková
        Sedláčková
        Soukupová
        Staňková
        Svobodová
        Sýkorová
        Tichá
        Urbanová
        Valentová
        Vaňková
        Veselá
        Vlčková
        Vávrová
        Zemanová
        Čechová
        Čermáková
        Černá
        Říhová
        Ševčíková
        Šimková
        Štěpánková
        Šťastná
    );
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
