from flask import Flask


app = Flask(__name__)
app.config["SECRET_KEY"] = "dc124b595879e4355112fd66b8c4c066"


from kds import routes
