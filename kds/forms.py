from flask_wtf import FlaskForm
from wtforms import StringField, SubmitField, BooleanField, IntegerField, FloatField, DateField
from wtforms.validators import DataRequired


class Autor(FlaskForm):
    imie = StringField(
        "Imie", validators=[DataRequired()]
    )
    nazwisko = StringField("Nazwisko", validators=[DataRequired()])
    czy_zywy = BooleanField("Czy zywy")
    submit = SubmitField("Dodaj")


class Styl(FlaskForm):
    nazwa = StringField(
        "Nazwa", validators=[DataRequired()]
    )
    region = StringField("Region", validators=[DataRequired()])
    submit = SubmitField("Dodaj")


class Dzielo_Sztuki(FlaskForm):
    Tytul = StringField(
        "Tytul", validators=[DataRequired()]
    )
    Cena = StringField("Cena", validators=[DataRequired()])
    Data_powstania = StringField("Data Powstania", validators=[DataRequired()])
    Styl_id = IntegerField("Styl ID", validators=[DataRequired()])
    Wystawa_id = IntegerField("Wystawa ID")
    submit = SubmitField("Dodaj")


class Wystawa(FlaskForm):
    Nazwa = StringField(
        "Nazwa", validators=[DataRequired()]
    )
    Miejsce_ekspozycji_id = StringField("Miejsce ekspozycji ID", validators=[DataRequired()])
    Czas_trwania = StringField("Czas trwania", validators=[DataRequired()])
    Data_rozpoczecia = DateField("Data rozpoczecia", validators=[DataRequired()])
    submit = SubmitField("Dodaj")


class Miejsce_ekspozycji(FlaskForm):
    Nazwa = StringField(
        "Nazwa", validators=[DataRequired()]
    )
    Max_liczba_zwiedzajacych = IntegerField("Max liczba zwiedzajacych", validators=[DataRequired()])
    Liczba_miejsc_parkingowych = IntegerField("Liczba miejsc parkingowych", validators=[DataRequired()])
    Miasto = StringField("Miasto", validators=[DataRequired()])
    Kategoria_miejsc_ekspozycji_id = IntegerField("Kategoria miejsc ekspozycji ID", validators=[DataRequired()])


class Kustosz(FlaskForm):
    Imie = StringField(
        "Nazwa", validators=[DataRequired()]
    )
    Nazwisko = StringField("Nazwisko", validators=[DataRequired()])
    Stopien_naukowy = StringField("Stopien naukowy", validators=[DataRequired()])
    Wystawa_id = IntegerField("Wystawa ID", validators=[DataRequired()])


