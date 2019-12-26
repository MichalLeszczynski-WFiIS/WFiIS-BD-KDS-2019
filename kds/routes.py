from flask import render_template, url_for, flash, redirect
from kds.forms import Autor, Styl, Dzielo_sztuki, Umowa, Patron, Kategoria_miejsc_ekspozycji, Kustosz, Miejsce_ekspozycji, Udzial_w_tworzeniu_dziela, Wystawa
from kds import app
from kds.db_functions import insert_value, select_from

@app.route("/")
def home():
    return render_template("home.html")


@app.route("/doc")
def doc():
    return render_template("doc.html")


@app.route("/add_to_table/<table_name>", methods=["GET", "POST"])
def add_to_table(table_name):
    Table = {
        "Autor": Autor(),
        "Styl": Styl(),
        "Dzielo_Sztuki": Dzielo_sztuki(),
        "Umowa": Umowa(),
        "Patron": Patron(),
        "Kategoria_miejsc_ekspozycji": Kategoria_miejsc_ekspozycji(),
        "Kustosz": Kustosz(),
        "Miejsce_ekspozycji":  Miejsce_ekspozycji(),
        "Udzial_w_tworzeniu_dziela": Udzial_w_tworzeniu_dziela(),
        "Wystawa": Wystawa()
    }

    if table_name == "choice":
        return render_template("table_choice.html", title="Wybor tabeli", tables=Table, function='add_to_table')

    form = Table[table_name]
    if form.is_submitted():
        insert_value(table_name, form)
        flash('Dodano rekord do: {}'.format(table_name), "success")
        return redirect(url_for("home"))
    return render_template("add_to_table.html", title="Dodaj rekord", form=form)


@app.route("/select/<table_name>", methods=["GET", "POST"])
def select(table_name):
    Table = {
        "Autor": Autor(),
        "Styl": Styl(),
        "Dzielo_Sztuki": Dzielo_sztuki(),
        "Umowa": Umowa(),
        "Patron": Patron(),
        "Kategoria_miejsc_ekspozycji": Kategoria_miejsc_ekspozycji(),
        "Kustosz": Kustosz(),
        "Miejsce_ekspozycji":  Miejsce_ekspozycji(),
        "Udzial_w_tworzeniu_dziela": Udzial_w_tworzeniu_dziela(),
        "Wystawa": Wystawa()
    }

    if table_name == "choice":
        return render_template("table_choice.html", title="Wybor tabeli", tables=Table, function='select')

    form = Table[table_name]

    records = select_from(table_name)
    return render_template("select_table.html", title="Dodaj rekord", records=records, form=form)
