from email import message
from flask import Flask
from flask_mail import Mail
import smtplib
import mysql
from datetime import datetime
from flask import Flask,render_template,request,session,redirect
from flask_sqlalchemy import SQLAlchemy
# from werkzeug import secure_filename
from werkzeug.utils import secure_filename

from flask import Flask, render_template, request, redirect, url_for, flash
import mysql.connector
from flask_mysqldb import MySQL
from werkzeug.security import generate_password_hash, check_password_hash
import json
import os


with open('config.json','r') as c :
    params = json.load(c) ['params']

local_server = True

app = Flask(__name__)
app.secret_key = 'super-secret-key'
app.config['UPLOAD_FOLDER'] = params['upload_location']
app.config.update(
   MAIL_SERVER = 'smtp.gmail.com',
   MAIL_PORT = '465',
   MAIL_USE_SSL = True,
   MAIL_USERNAME =  params['gmail-user'],
   MAIL_PASSWORD =  params['gmail-password']

)
mail = Mail(app)
if(local_server):
    app.config["SQLALCHEMY_DATABASE_URI"]= params['local_uri']
else:
    app.config["SQLALCHEMY_DATABASE_URI"]= params['prod_uri']

# app.config["SQLALCHEMY_DATABASE_URI"] = "mysql://root:@localhost/codingthunder"
db = SQLAlchemy(app)

# app.config['MYSQL_HOST']='localhost'
# app.config['MYSQL_USER']='root'
# app.config['MYSQL_PASSWORD']=''
# app.config['MYSQL_DB']='codingthunder'
# mysql= MySQL(app)
#MySQL Configuration

# Connect to MySQL

class Contacts(db.Model):
    sno = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(100), nullable=True)
    phone_num = db.Column(db.String(20))
    msg = db.Column(db.Text)
    #date = db.Column(db.DateTime)
    email = db.Column(db.String(100))


class Posts(db.Model):
    sno = db.Column(db.Integer, primary_key=True)
    title = db.Column(db.String(100))
    slug = db.Column(db.String(21))
    content = db.Column(db.String(120))
    tagline = db.Column(db.String(120))
    date = db.Column(db.DateTime)
    #email = db.Column(db.String(100))
    img_file = db.Column(db.String(12),nullable=True)



@app.route("/")
def home():
    posts = Posts.query.filter_by().all()[0:params['no_of_posts']]

    return render_template('index.html',params=params,posts=posts)

@app.route("/post/<string:post_slug>",methods=['GET'])
def post_route(post_slug):
    post = Posts.query.filter_by(slug=post_slug).first()

    return render_template('post.html',params=params,post=post)
@app.route("/about")
def about():
    return render_template('about.html',params=params)


@app.route("/dashboard",methods=['GET','POST'])
def dashboard():

    if ('user' in session and session['user'] == params['admin_user']):
        posts = Posts.query.all()
        return render_template('dashboard.html',params=params,posts=posts)


    if request.method=='POST':
        username = request.form.get('uname')
        userpass = request.form.get('pass')
        if (username == params['admin_user'] and userpass == params['admin_password']):
            # set the session variable
            session['user'] = username
            posts = Posts.query.all()
            return render_template('dashboard.html',params=params,posts=posts)


    return render_template('login.html',params=params)

@app.route("/edit/<string:sno>",methods=('GET','POST'))
def edit(sno) :
    if ('user' in session and session['user'] == params['admin_user']):
        if request.method == 'POST' :
            box_title = request.form.get('title')
            tline = request.form.get('tline')
            slug = request.form.get('slug')
            content = request.form.get('content')
            img_file = request.form.get('img_file')
            date = datetime.now()

            if sno=='0':
                post = Posts(title=box_title,slug=slug,content=content,tagline=tline,img_file=img_file,date=date)
                db.session.add(post)
                db.session.commit()
            else:
                post = Posts.query.filter_by(sno=sno).first()
                post.title = box_title
                post.slug = slug
                post.content = content
                post.tagline = tline
                post.img_file = img_file
                post.date = date
                db.session.commit()
                return redirect('/edit/'+sno)

    post = Posts.query.filter_by(sno=sno).first()
    return render_template('edit.html',params=params,post=post)

@app.route("/uploader",methods=['GET','POST'])
def uploader():
    if ('user' in session and session['user'] == params['admin_user']):
      if (request.method=='POST'):
        f=request.files['file1']
        f.save(os.path.join (app.config['UPLOAD_FOLDER'],secure_filename(f.filename)))
        return "Uploaded successfully"


@app.route("/contact",methods=['GET','POST'])
def contact():
    if (request.method=='POST'):
        name =request.form.get('name')
        phone = request.form.get('phone')
        email = request.form.get('email')
        msg = request.form.get('msg')
        entry = Contacts(name=name,phone_num=phone,msg=msg,email=email)
        db.session.add(entry)
        db.session.commit()
        mail.send_message('New message from ' + name,
                          sender=email,
                          recipients = [params['gmail-user']],
                          body = msg + "\n" + phone
                          )

    return render_template('contact.html',params=params)
def contact():
    if request.method == 'POST':

        name =request.form['uname']
        phone =request.form['phone']
        email =request.form['email']
        msg =request.form['msg']
        cur=mysql.connection.cursor()
        cur.execute("INSERT INTO contacts(name,phone_num,msg,email) VALUES (%s,%s,%s,%s)",(name,phone,msg,email))
        mysql.connection.commit()
        cur.close()


    return render_template('contact.html')

app.run(debug=True)