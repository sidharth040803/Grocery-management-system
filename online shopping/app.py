import mysql.connector,time,uuid,random,datetime
from flask import flash, Flask, render_template, redirect, url_for, request
db = mysql.connector.connect(
    host="localhost",
    user="root",
    password="sidharth",
    database="shopping"
)
mycursor = db.cursor()

print(datetime.datetime.now())