from flask import render_template, url_for, flash, redirect
from kds.forms import Autor, Styl, Dzielo_Sztuki
from kds import app
from kds.db_functions import insert_value

@app.route("/")
def home():
    return render_template("home.html")


@app.route("/doc")
def doc():
    return render_template("doc.html")


@app.route("/add_to_table/<table_name>", methods=["GET", "POST"])
def add_to_table(table_name):
    AddToTable = {
        "Autor": Autor(),
        "Styl": Styl(),
        "Dzielo_Sztuki": Dzielo_Sztuki()
    }

    if table_name == "choice":
        return render_template("table_choice.html", title="Wybor tabeli", tables=AddToTable)

    form = AddToTable[table_name]
    if form.validate_on_submit():
        insert_value(table_name, form)
        flash('Dodano rekord do: {}'.format(table_name), "success")
        return redirect(url_for("home"))
    return render_template("add_to_table.html", title="Dodaj rekord", form=form)
