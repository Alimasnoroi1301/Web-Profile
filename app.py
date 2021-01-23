from flask import Flask , render_template, session, request, url_for
from flaskext.mysql import MySQL
import pymysql

app = Flask(__name__)

db = MySQL()

app.config["MYSQL_DATABASE_HOST"] = "127.0.0.1"
app.config["MYSQL_DATABASE_PORT"] = 3306
app.config["MYSQL_DATABASE_USER"] = "root"
app.config["MYSQL_DATABASE_PASSWORD"] = ""
app.config["MYSQL_DATABASE_DB"] = "db_0442_uas"
db.init_app(app)

@app.route('/')
def MyHome():
    con = db.connect()
    cursor = con.cursor(pymysql.cursors.DictCursor)
    cursor.execute("select * from blogku")
    return render_template("home.html", db = cursor.fetchone())

@app.route('/gallery')
def MyGallery():
    con = db.connect()
    cursor = con.cursor(pymysql.cursors.DictCursor)
    cursor.execute("select * from gambarku") 
    return render_template("gallery.html", db = cursor.fetchone())

@app.route('/aboutme')
def MyAbout():
    con = db.connect()
    cursor = con.cursor(pymysql.cursors.DictCursor)
    cursor.execute("select * from dataku") 
    return render_template("about.html", db = cursor.fetchone())

@app.route('/admin', methods=["GET","POST"])    
def MyAdmin():
    if request.method == "POST" and "nim" in request.form and "nama" in request.form and "prodi" in request.form and "email" in request.form and "asal" in request.form and "nomor" in request.form:
        con = db.connect()
        cursor = con.cursor(pymysql.cursors.DictCursor)
        nim = request.form["nim"]
        nama = request.form["nama"]
        prodi = request.form["prodi"]
        email = request.form["email"]
        asal = request.form["asal"]
        nomor = request.form["nomor"]
        cursor.execute("UPDATE `dataku` SET `nim`=%s, `nama`=%s,  `prodi`=%s, `email`=%s, `asal`=%s, `nomor`=%s WHERE `id`=1", (nim, nama, prodi, email, asal, nomor,))
        con.commit()
    return render_template("admin.html")

if __name__ == '__main__':
    app.run(debug=True)
