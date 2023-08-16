import sqlite3

connection = sqlite3.connect('sciencekit.db')


cur = connection.cursor()

sql = '''
-- Find who are the students from which schools that ordered science kits
SELECT student.id, student.name, school.name, school.type, kit.type, kit.name, purchase.amount FROM study
  JOIN student on study.student_id = student.id
  JOIN school on study.school_id = school.id
  JOIN purchase on study.student_id = purchase.student_id
  JOIN kit on purchase.kit_id = kit.id;
  '''

cur.execute(sql)
data=cur.fetchall()

# print(data)
for row in data:
    print(row)
    
connection.close()