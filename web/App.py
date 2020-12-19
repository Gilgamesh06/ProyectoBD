
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

@app.route('/Productos')
def Productos():
    return render_template('productos.html')

@app.route('/Pedidos')
def Pedidos():
    return render_template('pedidos.html')


@app.route('/Contactenos')
def Contactenos():
    return render_template('contactenos.html')

if __name__ == '__main__':
    app.run(port = 3000, debug = True)