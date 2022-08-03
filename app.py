from flask import Flask

app = Flask(__name__)

@app.route('/hello')
def index():
    return 'Hello World, my name is Nha version 2!'

app.run(host='0.0.0.0', port=80)