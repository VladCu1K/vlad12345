from flask import Flask

app = Flask(__name__)

@app.route('/')
def helloIndex():
    return ' modificare 1111'
if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
