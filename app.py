#!/usr/bin/python
import time
import datetime
from flask import Flask

app = Flask(__name__)

@app.route('/')
def index():
    ts = time.time()
    tsst = datetime.datetime.fromtimestamp(ts).strftime('%Y-%m-%d %H:%M:%S')
    return tsst+' - Hello World!'

if __name__ == '__main__':
    app.run(debug=False, host='0.0.0.0', port=8080)
