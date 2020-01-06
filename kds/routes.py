from flask import render_template, url_for, flash, redirect
from kds.forms import (
    Autor,
    Styl,
    Dzielo_sztuki,
    Umowa,
    Patron,
    Kategoria_miejsc_ekspozycji,
    Kustosz,
    Miejsce_ekspozycji,
    Udzial_w_tworzeniu_dziela,
    Wystawa,
)
from kds import app
from kds.db_functions import insert_value, select_from, select_fun


def gen_table():
    Table = {
        "Autor": Autor(),
        "Styl": Styl(),
        "Dzielo_Sztuki": Dzielo_sztuki(),
        "Umowa": Umowa(),
        "Patron": Patron(),
        "Kategoria_miejsc_ekspozycji": Kategoria_miejsc_ekspozycji(),
        "Kustosz": Kustosz(),
        "Miejsce_ekspozycji": Miejsce_ekspozycji(),
        "Udzial_w_tworzeniu_dziela": Udzial_w_tworzeniu_dziela(),
        "Wystawa": Wystawa(),
    }
    return Table


@app.route("/")
def home():
    return render_template("home.html")


@app.route("/doc")
def doc():
    return render_template("doc.html")


@app.route("/zal")
def zal():
    records = select_from("Kustosz_wystawa")
    kustosz_count = select_from("kustosz", "COUNT(*)")
    wystawa_count = select_from("wystawa", "COUNT(*)")
    counts = [kustosz_count, wystawa_count]

    return render_template(
        "zal.html", title="Dodaj rekord", records=records, counts=counts
    )


@app.route("/add_to_table/<table_name>", methods=["GET", "POST"])
def add_to_table(table_name):
    Table = gen_table()

    if table_name == "choice":
        return render_template(
            "table_choice.html",
            title="Wybor tabeli",
            tables=Table,
            function="add_to_table",
        )

    form = Table[table_name]
    if form.is_submitted():
        insert_value(table_name, form)
        flash("Dodano rekord do: {}".format(table_name), "success")
        return redirect(url_for("home"))
    return render_template("add_to_table.html", title="Dodaj rekord", form=form)


@app.route("/select/<table_name>", methods=["GET", "POST"])
def select(table_name):

    Table = gen_table()

    if table_name == "choice":
        return render_template(
            "table_choice.html", title="Wybor tabeli", tables=Table, function="select"
        )

    Table = gen_table()
    form = Table[table_name]

    records = select_from(table_name)
    return render_template(
        "select_table.html", title="Raport", records=records, form=form
    )
