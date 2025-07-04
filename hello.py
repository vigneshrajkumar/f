from flask import Flask

app = Flask(__name__)

@app.route("/")
def index():
    return {"message": "simple flask app"}

@app.route("/health")
def health():
    return {"status": "OK"}
