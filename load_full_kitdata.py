import sqlite3

connection = sqlite3.connect('database.db')

with open('load_full_kitdata.sql') as f:
    connection.executescript(f.read())
    