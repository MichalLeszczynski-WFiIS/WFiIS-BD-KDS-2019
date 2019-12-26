

CREATE SEQUENCE public.kategoria_miejsc_ekspozycji_id_seq;

CREATE TABLE public.Kategoria_miejsc_ekspozycji (
                Kategoria_miejsc_ekspozycji_id INTEGER NOT NULL DEFAULT nextval('public.kategoria_miejsc_ekspozycji_id_seq'),
                Nazwa VARCHAR NOT NULL,
                Przynaleznosc VARCHAR NOT NULL,
                CONSTRAINT kategoria_miejsc_ekspozycji_id PRIMARY KEY (Kategoria_miejsc_ekspozycji_id)
);


ALTER SEQUENCE public.kategoria_miejsc_ekspozycji_id_seq OWNED BY public.Kategoria_miejsc_ekspozycji.Kategoria_miejsc_ekspozycji_id;

CREATE SEQUENCE public.miejsce_ekspozycji_id_seq;

CREATE TABLE public.Miejsce_ekspozycji (
                Nazwa VARCHAR NOT NULL,
                Miejsce_ekspozycji_id INTEGER NOT NULL DEFAULT nextval('public.miejsce_ekspozycji_id_seq'),
                Max_liczba_zwiedzajacych INTEGER NOT NULL,
                Liczba_miejsc_parkingowych INTEGER NOT NULL,
                Miasto VARCHAR NOT NULL,
                Kategoria_miejsc_ekspozycji_id INTEGER NOT NULL,
                CONSTRAINT miejsce_ekspozycji_id PRIMARY KEY (Miejsce_ekspozycji_id)
);


ALTER SEQUENCE public.miejsce_ekspozycji_id_seq OWNED BY public.Miejsce_ekspozycji.Miejsce_ekspozycji_id;

CREATE SEQUENCE public.patron_id_seq;

CREATE TABLE public.Patron (
                Patron_id INTEGER NOT NULL DEFAULT nextval('public.patron_id_seq'),
                Imie VARCHAR NOT NULL,
                Nazwisko VARCHAR NOT NULL,
                Zawod VARCHAR NOT NULL,
                CONSTRAINT patron_id PRIMARY KEY (Patron_id)
);


ALTER SEQUENCE public.patron_id_seq OWNED BY public.Patron.Patron_id;

CREATE SEQUENCE public.wystawa_id_seq;

CREATE TABLE public.Wystawa (
                Wystawa_id INTEGER NOT NULL DEFAULT nextval('public.wystawa_id_seq'),
                Nazwa VARCHAR NOT NULL,
                Miejsce_ekspozycji_id INTEGER NOT NULL,
                Czas_trwania TIME NOT NULL,
                Data_rozpoczecia DATE NOT NULL,
                CONSTRAINT wystawa_id PRIMARY KEY (Wystawa_id)
);


ALTER SEQUENCE public.wystawa_id_seq OWNED BY public.Wystawa.Wystawa_id;

CREATE SEQUENCE public.kustosz_id_seq;

CREATE TABLE public.Kustosz (
                Kustosz_id INTEGER NOT NULL DEFAULT nextval('public.kustosz_id_seq'),
                Imie VARCHAR NOT NULL,
                Nazwisko VARCHAR NOT NULL,
                Stopien_naukowy VARCHAR,
                Wystawa_id INTEGER,
                CONSTRAINT kustosz_id PRIMARY KEY (Kustosz_id)
);


ALTER SEQUENCE public.kustosz_id_seq OWNED BY public.Kustosz.Kustosz_id;

CREATE TABLE public.Umowa (
                Patron_id INTEGER NOT NULL,
                Wystawa_id INTEGER NOT NULL,
                Data_zawarcia DATE NOT NULL,
                Rodzaj_patronatu VARCHAR NOT NULL,
                CONSTRAINT umowa_id PRIMARY KEY (Patron_id, Wystawa_id)
);


CREATE SEQUENCE public.autor_id_seq;

CREATE TABLE public.Autor (
                Autor_id INTEGER NOT NULL DEFAULT nextval('public.autor_id_seq'),
                Imie VARCHAR NOT NULL,
                Nazwisko VARCHAR NOT NULL,
                Czy_zywy BOOLEAN NOT NULL,
                CONSTRAINT autor_id PRIMARY KEY (Autor_id)
);


ALTER SEQUENCE public.autor_id_seq OWNED BY public.Autor.Autor_id;

CREATE SEQUENCE public.styl_id_seq;

CREATE TABLE public.Styl (
                Styl_id INTEGER NOT NULL DEFAULT nextval('public.styl_id_seq'),
                Nazwa VARCHAR NOT NULL,
                Region VARCHAR NOT NULL,
                CONSTRAINT styl_id PRIMARY KEY (Styl_id)
);


ALTER SEQUENCE public.styl_id_seq OWNED BY public.Styl.Styl_id;

CREATE SEQUENCE public.dzielo_sztuki_id_seq;

CREATE TABLE public.Dzielo_sztuki (
                Dzielo_sztuki INTEGER NOT NULL DEFAULT nextval('public.dzielo_sztuki_id_seq'),
                Tytul VARCHAR NOT NULL,
                Cena VARCHAR,
                Data_powstania VARCHAR NOT NULL,
                Styl_id INTEGER,
                Wystawa_id INTEGER,
                CONSTRAINT dzielo_sztuki_id PRIMARY KEY (Dzielo_sztuki)
);


ALTER SEQUENCE public.dzielo_sztuki_id_seq OWNED BY public.Dzielo_sztuki.Dzielo_sztuki;

CREATE TABLE public.Udzial_w_tworzeniu_dziela (
                Autor_id INTEGER NOT NULL,
                Dzielo_sztuki INTEGER NOT NULL,
                Procentowy_udzial INTEGER,
                CONSTRAINT udzial_w_tworzeniu_dziela_id PRIMARY KEY (Autor_id, Dzielo_sztuki)
);


ALTER TABLE public.Miejsce_ekspozycji ADD CONSTRAINT kategoria_miejsc_ekspozycji_miejsce_ekspozycji_fk
FOREIGN KEY (Kategoria_miejsc_ekspozycji_id)
REFERENCES public.Kategoria_miejsc_ekspozycji (Kategoria_miejsc_ekspozycji_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Wystawa ADD CONSTRAINT miejsce_ekspozycji_wystawa_fk
FOREIGN KEY (Miejsce_ekspozycji_id)
REFERENCES public.Miejsce_ekspozycji (Miejsce_ekspozycji_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Umowa ADD CONSTRAINT patron_umowa_fk
FOREIGN KEY (Patron_id)
REFERENCES public.Patron (Patron_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Umowa ADD CONSTRAINT wystawa_umowa_fk
FOREIGN KEY (Wystawa_id)
REFERENCES public.Wystawa (Wystawa_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Kustosz ADD CONSTRAINT wystawa_kustosz_fk
FOREIGN KEY (Wystawa_id)
REFERENCES public.Wystawa (Wystawa_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Dzielo_sztuki ADD CONSTRAINT wystawa_dzielo_sztuki_fk
FOREIGN KEY (Wystawa_id)
REFERENCES public.Wystawa (Wystawa_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Udzial_w_tworzeniu_dziela ADD CONSTRAINT autor_autorstwo_fk
FOREIGN KEY (Autor_id)
REFERENCES public.Autor (Autor_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Dzielo_sztuki ADD CONSTRAINT styl_dzielo_sztuki_fk
FOREIGN KEY (Styl_id)
REFERENCES public.Styl (Styl_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Udzial_w_tworzeniu_dziela ADD CONSTRAINT dzielo_sztuki_autorstwo_fk
FOREIGN KEY (Dzielo_sztuki)
REFERENCES public.Dzielo_sztuki (Dzielo_sztuki)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;