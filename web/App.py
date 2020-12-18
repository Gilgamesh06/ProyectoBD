
from flask import Flask , render_template
from flask_mysqldb import MySQL

app = Flask(__name__)
app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = 'root'
app.config['MYSQL_DB'] = 'Tienda'
mysql = MySQL(app)


@app.route('/')
def Index():
    return render_template('index.html')

@app.route('/Registrar')
def Registrar():
    return render_template('registro.html')

@app.route('/Ingresar')
def Ingresar():
    return render_template('ingresar.html')

if __name__ == '__main__':
    app.run(port = 3000, debug = True)