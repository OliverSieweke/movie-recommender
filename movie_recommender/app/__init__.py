"""
App
===
"""

# Third Party --------------------------------------------------------------------------
from flask import Flask, render_template


app = Flask(__name__)


@app.route("/")
def index() -> str:
    """Return index page.

    Returns
    -------
    :code:`str`
        Index page.
    """
    print(type(render_template("index.html", test=3)))
    return render_template("index.html", test=3)
