from flask import Flask

app = Flask(__name__)

@app.route('/')
def helloIndex():
    return ' 123 123 1231 3 '
if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
