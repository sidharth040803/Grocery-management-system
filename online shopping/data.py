from flask import flash, Flask, render_template, redirect, url_for, request,session
import mysql.connector
import random,datetime




app = Flask(__name__)
app.secret_key = "yoursecretkey"
db = mysql.connector.connect(
    host="localhost",
    user="root",
    password="sidharth",
    database="shopping"
)
mycursor = db.cursor()


@app.route('/')
def home():
    
    if session:
        return render_template('dashboard.html',name=session['username'])
    else:
        return render_template('dashboard.html',name='')

@app.route('/fruits')
def fruits():
    mycursor.execute("SELECT ProductID, ProductName, Price FROM fruits")
    data = mycursor.fetchall()
    
    mycursor.execute("SELECT SUM(Price) FROM cart")
    totalsum = mycursor.fetchone()
    if totalsum[0] is not None:
        sum=float(totalsum[0])
    else:
        sum=0.0

    return render_template("fruits.html", data=data,sum=sum)

@app.route('/vegetables')
def vegetables():
    mycursor.execute('select ProductID, ProductName,Price from vegetables')
    data=mycursor.fetchall()
    mycursor.execute("SELECT SUM(Price) FROM cart")
    totalsum = mycursor.fetchone()
    if totalsum[0] is not None:
        sum=float(totalsum[0])
    else:
        sum=0.0

    return render_template('vegetables.html',data=data,sum=sum)  

@app.route('/diary')
def diary():
    mycursor.execute('select ProductID, ProductName,Price from diary')
    data=mycursor.fetchall()
    mycursor.execute("SELECT SUM(Price) FROM cart")
    totalsum = mycursor.fetchone()
    if totalsum[0] is not None:
        sum=float(totalsum[0])
    else:
        sum=0.0
    return render_template('diary.html',data=data,sum=sum)

@app.route('/log')
def log():
    return render_template('login.html')
@app.route('/reg')
def reg():
    return render_template('registration.html')

@app.route('/spices')
def spices():
    mycursor.execute('select ProductID, ProductName,Price from spices')
    data=mycursor.fetchall()
    mycursor.execute("SELECT SUM(Price) FROM cart")
    totalsum = mycursor.fetchone()
    if totalsum[0] is not None:
        sum=float(totalsum[0])
    else:
        sum=0.0
    return render_template('spices.html',data=data,sum=sum)


@app.route('/rice')
def rice():
    mycursor.execute('select ProductID, ProductName,Price from rice')
    data=mycursor.fetchall()
    mycursor.execute("SELECT SUM(Price) FROM cart")
    totalsum = mycursor.fetchone()
    if totalsum[0] is not None:
        sum=float(totalsum[0])
    else:
        sum=0.0
    return render_template('rice.html',data=data,sum=sum)

@app.route('/nutrition')
def nutrition():
    mycursor.execute('select ProductID, ProductName,Price from nutrition')
    data=mycursor.fetchall()
    mycursor.execute("SELECT SUM(Price) FROM cart")
    totalsum = mycursor.fetchone()
    if totalsum[0] is not None:
        sum=float(totalsum[0])
    else:
        sum=0.0
    return render_template('rice.html',data=data,sum=sum)

@app.route('/chocolates')
def chocolates():
    mycursor.execute('select ProductID, ProductName,Price from chocolates')
    data=mycursor.fetchall()
    mycursor.execute("SELECT SUM(Price) FROM cart")
    totalsum = mycursor.fetchone()
    if totalsum[0] is not None:
        sum=float(totalsum[0])
    else:
        sum=0.0
    return render_template('chocolates.html',data=data,sum=sum)


@app.route('/snacks')
def snacks():
    mycursor.execute('select ProductID, ProductName,Price from snacks')
    data=mycursor.fetchall()
    mycursor.execute("SELECT SUM(Price) FROM cart")
    totalsum = mycursor.fetchone()
    if totalsum[0] is not None:
        sum=float(totalsum[0])
    else:
        sum=0.0
    return render_template('snacks.html',data=data,sum=sum)

@app.route('/coffee')
def coffee():
    mycursor.execute('select ProductID, ProductName,Price from coffee')
    data=mycursor.fetchall()
    mycursor.execute("SELECT SUM(Price) FROM cart")
    totalsum = mycursor.fetchone()
    if totalsum[0] is not None:
        sum=float(totalsum[0])
    else:
        sum=0.0
    return render_template('coffee.html',data=data,sum=sum)

@app.route('/meat')
def meat():
    mycursor.execute('select ProductID, ProductName,Price from meat')
    data=mycursor.fetchall()
    mycursor.execute("SELECT SUM(Price) FROM cart")
    totalsum = mycursor.fetchone()
    if totalsum[0] is not None:
        sum=float(totalsum[0])
    else:
        sum=0.0
    return render_template('meat.html',data=data,sum=sum)








@app.route('/add_to_cart/<int:productid>/<string:productname>/<float:productprice>',methods=["POST","GET"])
def add_to_cart(productid,productname,productprice):
    totalprice=0
    if request.method=="POST":
        quantity=request.form['quantity']
        totalprice = float(quantity) * float(productprice)
    
        mycursor.execute("INSERT INTO cart(productid,productname,quantity,price) values(%s,%s,%s,%s)",(productid,productname,quantity,totalprice))
        db.commit()
        template_name = request.referrer.split("/")[-1]

        return redirect(url_for(template_name))
    else:
        return "invalid"
    

@app.route('/billing', methods=["GET", "POST"])
def billing():
    if request.method == "POST":
        mycursor.execute("SELECT productname, quantity, price FROM cart")
        data = mycursor.fetchall()
    else:
        data = []  

    mycursor.execute('SELECT sum(price) from cart')

    total_sum=mycursor.fetchone()
    print(total_sum)
    print(total_sum[0])
    sum=float(total_sum[0])
    current_user=username()
    mycursor.execute("select address from register where username=%s",(current_user,))
    address=mycursor.fetchone()

    return render_template("billing.html", data=data,sum=sum,address=address)

@app.route('/login', methods=['GET', 'POST'])
def login():
    if request.method == 'POST':
        username = request.form.get("username")
        password = request.form.get("password")
        query = "SELECT * from register where username=%s and password=%s"
        data = (username, password)
        mycursor.execute(query, data)
        result = mycursor.fetchall()
        if result:
            global user_active, email_id
            user_active = str(result[0][0])
            email_id = username
            session['username'] = username
            return redirect(url_for('home'))
            # return render_template('dashboard.html',username=username)
        else:
            return render_template('login.html')
    else:
        return "<h1>try another way</h1>"

    

    
@app.route('/register', methods=["GET", "POST"])
def register():
    if request.method == "POST":
        username=request.form['username']
        number = request.form['number']
        email = request.form['email']
        password = request.form['password'].encode('utf-8')
        address=request.form['address']
        nation=request.form['nation']

        mycursor.execute("SELECT * FROM register WHERE email = %s", (email,))
        user_exist = mycursor.fetchone()

        if user_exist:
            flash("The email is already registered. Try another email.")
        else:
            mycursor.execute("INSERT INTO register(username,phone_no, email, password,address,nationality) VALUES (%s, %s, %s, %s,%s,%s)",
                             (username,number,email,password,address,nation))
            db.commit()
            flash(f"Registration successful for {username}")

    return render_template('login.html')


def username():
    username=session.get('username')
    return username



@app.route('/orders', methods=["GET", "POST"])
def orders():
    if request.method == "GET":
        mycursor.execute("SELECT  sum(price) FROM cart")
        cart_data = mycursor.fetchone()[0]
        current_time=str(datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S'))
        username_value=username()
        
        mycursor.execute('insert into orders(cust_name,price,date_and_time)values(%s,%s,%s)',(username_value,cart_data,current_time))
        mycursor.execute("DELETE FROM cart")
        db.commit()
        template=request.referrer.split('/')[-1]
    return render_template('dashboard.html')

        


if __name__ == "__main__":
    app.run(debug=True)
