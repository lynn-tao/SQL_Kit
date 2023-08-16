.mode csv
.output test.csv

 -- Connect the entire database
SELECT * FROM study
  JOIN student on study.student_id = student.id
  JOIN school on study.school_id = school.id
  JOIN purchase on study.student_id = purchase.student_id
  JOIN kit on purchase.kit_id = kit.id
  JOIN assembly on kit.id = assembly.kit_id
  JOIN part on assembly.part_id = part.id;
  
-- Find how many students are in 'Navy' ES ordered science kits
SELECT COUNT(student.name) FROM study
  JOIN student on study.student_id = student.id
  JOIN school on study.school_id = school.id
  JOIN purchase on study.student_id = purchase.student_id
  JOIN kit on purchase.kit_id = kit.id
WHERE school.name = 'Navy';

-- Find who are the students are in 'Navy' ES ordered science kits
SELECT student.id, student.name, school.name, school.type, kit.type, kit.name, purchase.amount FROM study
  JOIN student on study.student_id = student.id
  JOIN school on study.school_id = school.id
  JOIN purchase on study.student_id = purchase.student_id
  JOIN kit on purchase.kit_id = kit.id
WHERE school.name = 'Navy';

-- Find who are the students ordered Middle School kits
SELECT student.id, student.name, kit.type, kit.name FROM student
  JOIN purchase on student.id = purchase.student_id
  JOIN kit on purchase.kit_id = kit.id
WHERE kit.type = 'MS';

-- Find the elementary school students who ordered MS kits
SELECT student.name, school.name, school.type, kit.type, purchase.amount from study
  JOIN student on study.student_id = student.id 
  JOIN school on study.school_id = school.id  
  JOIN purchase on study.student_id = purchase.student_id 
  JOIN kit on purchase.kit_id = kit.id
WHERE school.type = 'E' AND kit.type = 'MS';

--Find the total price of the current orders
SELECT sum(part.price) from assembly
  JOIN kit on assembly.kit_id = kit.id
  JOIN part on assembly.part_id = part.id;


--Find the prices each student will have to pay
SELECT student.name from student WHERE student.id='1';

SELECT sum(part.price) from assembly
  JOIN kit on assembly.kit_id = kit.id
  JOIN part on assembly.part_id = part.id
  JOIN purchase on kit.id = purchase.kit_id
  JOIN student on purchase.student_id = student.id  
WHERE student.id = '1'; 

SELECT student.name from student WHERE student.id='2';

SELECT sum(part.price) from assembly
  JOIN kit on assembly.kit_id = kit.id
  JOIN part on assembly.part_id = part.id
  JOIN purchase on kit.id = purchase.kit_id
  JOIN student on purchase.student_id = student.id  
WHERE student.id = '2'; 

SELECT student.name from student WHERE student.id='3';

SELECT sum(part.price) from assembly
  JOIN kit on assembly.kit_id = kit.id
  JOIN part on assembly.part_id = part.id
  JOIN purchase on kit.id = purchase.kit_id
  JOIN student on purchase.student_id = student.id  
WHERE student.id = '3'; 