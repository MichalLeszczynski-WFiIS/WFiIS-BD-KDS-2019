from flask_wtf import FlaskForm
from wtforms import (
    StringField,
    SubmitField,
    BooleanField,
    IntegerField,
    DateField,
)
from wtforms.validators import DataRequired


class Autor(FlaskForm):
    imie = StringField("Imię", validators=[DataRequired()])
    nazwisko = StringField("Nazwisko", validators=[DataRequired()])
    czy_zywy = BooleanField("Czy żywy")
    submit = SubmitField("Dodaj")


class Styl(FlaskForm):
    nazwa = StringField("Nazwa", validators=[DataRequired()])
    region = StringField("Region", validators=[DataRequired()])
    submit = SubmitField("Dodaj")


class Dzielo_sztuki(FlaskForm):
    Tytul = StringField("Tytuł", validators=[DataRequired()])
    Cena = StringField("Cena")
    Data_powstania = DateField("Data Powstania (YYYY-MM-DD)")
    Styl_id = IntegerField("Styl ID")
    Wystawa_id = IntegerField("Wystawa ID")
    submit = SubmitField("Dodaj")


class Udzial_w_tworzeniu_dziela(FlaskForm):
    Autor_id = IntegerField("Autor ID", validators=[DataRequired()])
    Dzielo_sztuki_id = IntegerField("Dzieło Sztuki ID", validators=[DataRequired()])
    Procentowy_udzial = IntegerField("Procentowy Udział", validators=[DataRequired()])
    submit = SubmitField("Dodaj")


class Wystawa(FlaskForm):
    Nazwa = StringField("Nazwa", validators=[DataRequired()])
    Miejsce_ekspozycji_id = StringField(
        "Miejsce ekspozycji ID", validators=[DataRequired()]
    )
    Data_rozpoczecia = DateField(
        "Data rozpoczęcia (YYYY-MM-DD)"
    )
    Data_zakonczenia = DateField(
        "Data zakończenia (YYYY-MM-DD)"
    )
    submit = SubmitField("Dodaj")


class Miejsce_ekspozycji(FlaskForm):
    Nazwa = StringField("Nazwa", validators=[DataRequired()])
    Max_liczba_zwiedzajacych = IntegerField(
        "Max liczba zwiedzających", validators=[DataRequired()]
    )
    Liczba_miejsc_parkingowych = IntegerField(
        "Liczba miejsc parkingowych", validators=[DataRequired()]
    )
    Miasto = StringField("Miasto", validators=[DataRequired()])
    Kategoria_miejsc_ekspozycji_id = IntegerField(
        "Kategoria miejsc ekspozycji ID", validators=[DataRequired()]
    )
    submit = SubmitField("Dodaj")


class Kategoria_miejsc_ekspozycji(FlaskForm):
    Nazwa = StringField("Nazwa", validators=[DataRequired()])
    Przynaleznosc = StringField("Przynależność", validators=[DataRequired()])
    submit = SubmitField("Dodaj")


class Kustosz(FlaskForm):
    Imie = StringField("Imię", validators=[DataRequired()])
    Nazwisko = StringField("Nazwisko", validators=[DataRequired()])
    Stopien_naukowy = StringField("Stopień naukowy")
    Wystawa_id = IntegerField("Wystawa ID")
    submit = SubmitField("Dodaj")


class Patron(FlaskForm):
    Imie = StringField("Imię", validators=[DataRequired()])
    Nazwisko = StringField("Nazwisko", validators=[DataRequired()])
    Zawod = StringField("Zawód")
    submit = SubmitField("Dodaj")


class Umowa(FlaskForm):
    Patron_id = IntegerField("Patron ID", validators=[DataRequired()])
    Wystawa_id = IntegerField("Wystawa ID", validators=[DataRequired()])
    Data_zawarcia = DateField("Data Zawarcia (YYYY-MM-DD)")
    Rodzaj_patronatu = StringField("Rodzaj Patronatu", validators=[DataRequired()])
    submit = SubmitField("Dodaj")
