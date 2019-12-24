from flask import render_template, url_for, flash, redirect
from kds.forms import AddToTableForm
from kds import app


@app.route("/")
def home():
    return render_template("home.html", posts=posts, title="Home")


@app.route("/doc")
def doc():
    return render_template("doc.html")


@app.route("/tabele", methods=["GET", "POST"])
def tabele():
    form = AddToTableForm()
    if form.validate_on_submit():
        flash('Zasubmitowano formularz', "success")
        return redirect(url_for("home"))
    return render_template("tabele.html", title="Register", form=form)
