import sqlite3

connection = sqlite3.connect('database.db')
cur = connection.cursor()

# cur.execute(".header on")
# cur.execute(".mode column")
# cur.execute("UPDATE FullKitData SET Student='Baby' WHERE school='Providence Elementary';")
data = cur.execute("SELECT Student, elementary_kits || ', ' || middle_kits AS Kits FROM FullKitData WHERE school='Providence Elementary';")
for column in data:
    print(column)
# print(data)

# PRINT FORMATTED DATA TABLE
# print(pd.read_sql_query("SELECT * FROM FullKitData", connection))

connection.close()