insert into Autor (imie, nazwisko, czy_zywy) values ('Bartosz', 'Babacki', 'True');
insert into Autor (imie, nazwisko, czy_zywy) values ('Wojciech', 'Wawacki', 'False');
insert into Autor (imie, nazwisko, czy_zywy) values ('Andrzej', 'Anacki', 'True');

insert into Styl (nazwa, region) values ('Barok', 'Francja');
insert into Styl (nazwa, region) values ('Renesans', 'Włochy');

insert into Kategoria_miejsc_ekspozycji (Nazwa, Przynaleznosc) values ('Kosciol', 'Kuria');
insert into Kategoria_miejsc_ekspozycji (Nazwa, Przynaleznosc) values ('Centrum kultury', 'Miasto');
insert into Kategoria_miejsc_ekspozycji (Nazwa, Przynaleznosc) values ('Ratusz', 'Miasto');

insert into Miejsce_ekspozycji (Nazwa, Max_liczba_zwiedzajacych, Liczba_miejsc_parkingowych, Miasto, Kategoria_miejsc_ekspozycji_id) values ('Kosciol sw. Andrzeja', '100', '20', 'Krakow', '1');
insert into Miejsce_ekspozycji (Nazwa, Max_liczba_zwiedzajacych, Liczba_miejsc_parkingowych, Miasto, Kategoria_miejsc_ekspozycji_id) values ('Miejsckie centrum kultury', '200', '50', 'Warszawa', '2');

insert into Wystawa (Nazwa, Miejsce_ekspozycji_id, Data_rozpoczecia, Data_zakonczenia) values ('Chwile Nieulotne ', '1', '2019-11-24', '2019-11-25');
insert into Wystawa (Nazwa, Miejsce_ekspozycji_id, Data_rozpoczecia, Data_zakonczenia) values ('Chwile Ulotne ', '2', '2019-11-26', '2019-11-27');

insert into Kustosz (Imie, Nazwisko, Stopien_naukowy, Wystawa_id) values ('Zofia', 'Zazacka', 'Doktor', '1');
insert into Kustosz (Imie, Nazwisko, Stopien_naukowy, Wystawa_id) values ('Małgorzata', 'Mamacka', 'Magister', '1');
insert into Kustosz (Imie, Nazwisko, Stopien_naukowy, Wystawa_id) values ('Irena', 'Inacka', 'Doktor habilitowany', '2');
insert into Kustosz (Imie, Nazwisko, Stopien_naukowy, Wystawa_id) values ('Maria', 'Cabacka', '-', '2');

insert into Dzielo_Sztuki (Tytul, Cena, Data_powstania, Styl_id, Wystawa_id) values ('Krem', '1000', '2018-04-01', '2', '1');
insert into Dzielo_Sztuki (Tytul, Cena, Data_powstania, Styl_id, Wystawa_id) values ('Kubek', '2000', '2018-04-02', '1', '1');
insert into Dzielo_Sztuki (Tytul, Cena, Data_powstania, Styl_id, Wystawa_id) values ('Dama z laptopem', '3000', '2018-04-03', '2', '2');
insert into Dzielo_Sztuki (Tytul, Cena, Data_powstania, Styl_id, Wystawa_id) values ('Ulotne tabletki', '4000', '2018-04-04', '1', '2');

insert into Patron (Imie, Nazwisko, Zawod) values ('Konrad', 'Kazacki', 'Piosenkarz');

insert into Umowa (Patron_id, Wystawa_id, Data_zawarcia, Rodzaj_patronatu) values ('1', '1', '2019-10-10', 'Wsparcie pieniezne');

insert into Udzial_w_tworzeniu_dziela (Autor_id, Dzielo_sztuki_id, Procentowy_udzial) values ('1', '1', '50');

