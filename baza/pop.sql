insert into Autor (imie, nazwisko, czy_zywy) values ('Bartosz', 'Babacki', 'True');

insert into Styl (nazwa, region) values ('Barok', 'Francja');

insert into Kategoria_miejsc_ekspozycji (Nazwa, Przynaleznosc) values ('Kosciol', 'Kuria');

insert into Miejsce_ekspozycji (Nazwa, Max_liczba_zwiedzajacych, Liczba_miejsc_parkingowych, Miasto, Kategoria_miejsc_ekspozycji_id) values ('Kosciol sw. Andrzeja', '100', '20', 'Krakow', '1');

insert into Wystawa (Nazwa, Miejsce_ekspozycji_id, Data_rozpoczecia, Data_zakonczenia) values ('Chwile Nieulotne ', '1', '2019-11-25', '2019-11-24');

insert into Kustosz (Imie, Nazwisko, Stopien_naukowy, Wystawa_id) values ('Zofia', 'Zazacka', 'Doktor', '1');

insert into Dzielo_Sztuki (Tytul, Cena, Data_powstania, Styl_id, Wystawa_id) values ('Krem', '1000', '2018-04-01', '1', '1');

insert into Patron (Imie, Nazwisko, Zawod) values ('Konrad', 'Kazacki', 'Piosenkarz');

insert into Umowa (Patron_id, Wystawa_id, Data_zawarcia, Rodzaj_patronatu) values ('1', '1', '2019-10-10', 'Wsparcie pieniezne');

insert into Udzial_w_tworzeniu_dziela (Autor_id, Dzielo_sztuki_id, Procentowy_udzial) values ('1', '1', '50');

