INSERT INTO Autor (imie, nazwisko, czy_zywy) VALUES ('Bartosz', 'Babacki', 'True');

INSERT INTO Styl (nazwa, region) VALUES ('Barok', 'Francja');

INSERT INTO Kategoria_miejsc_ekspozycji (Nazwa, Przynaleznosc) VALUES ('Kosciol', 'Kuria');

INSERT INTO Miejsce_ekspozycji (Nazwa, Max_liczba_zwiedzajacych, Liczba_miejsc_parkingowych, Miasto, Kategoria_miejsc_ekspozycji_id) VALUES ('Kosciol sw. Andrzeja', '100', '20', 'Krakow', '1');

INSERT INTO Wystawa (Nazwa, Miejsce_ekspozycji_id, Data_rozpoczecia, Data_zakonczenia) VALUES ('Chwile Nieulotne ', '1', '2019-11-25', '2019-11-24');

INSERT INTO Kustosz (Imie, Nazwisko, Stopien_naukowy, Wystawa_id) VALUES ('Zofia', 'Zazacka', 'Doktor', '1');

INSERT INTO Dzielo_Sztuki (Tytul, Cena, Data_powstania, Styl_id, Wystawa_id) VALUES ('Krem', '1000', '2018-04-01', '1', '1');

INSERT INTO Patron (Imie, Nazwisko, Zawod) VALUES ('Konrad', 'Kazacki', 'Piosenkarz');

INSERT INTO Umowa (Patron_id, Wystawa_id, Data_zawarcia, Rodzaj_patronatu) VALUES ('1', '1', '2019-10-10', 'Wsparcie pieniezne');

INSERT INTO Udzial_w_tworzeniu_dziela (Autor_id, Dzielo_sztuki_id, Procentowy_udzial) VALUES ('1', '1', '50');
