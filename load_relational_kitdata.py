import sqlite3

connection = sqlite3.connect("sciencekit.db")

with open("load_relational_kitdata.sql") as f:
    connection.executescript(f.read())