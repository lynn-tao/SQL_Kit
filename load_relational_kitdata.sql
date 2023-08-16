DROP TABLE IF EXISTS student;

CREATE TABLE student (
  id INTEGER NOT NULL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255),
  parent_name VARCHAR(255),
  parent_email VARCHAR(255),
  address VARCHAR(255)
);

DROP TABLE IF EXISTS school;

CREATE TABLE school (
  id INTEGER NOT NULL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  address VARCHAR(255),
  type VARCHAR(255),
  Title_I INTEGER,
  principal VARCHAR(255)
);

DROP TABLE IF EXISTS study;

CREATE TABLE study (
  student_id INTEGER,
  school_id VARCHAR(255),
  PRIMARY KEY (student_id, school_id),
  FOREIGN KEY (student_id) REFERENCES student(id),
  FOREIGN KEY (school_id) REFERENCES school(id)
);

DROP TABLE IF EXISTS kit;

CREATE TABLE kit (
  id INTEGER NOT NULL PRIMARY KEY,
  type VARCHAR(255),
  name VARCHAR(255)
);

DROP TABLE IF EXISTS purchase;

CREATE TABLE purchase (
  student_id INTEGER,
  kit_id INTEGER,
  amount INTEGER,
  PRIMARY KEY (student_id, kit_id),
  FOREIGN KEY (student_id) REFERENCES student(id),
  FOREIGN KEY (kit_id) REFERENCES kit(id)
);

DROP TABLE IF EXISTS part;

CREATE TABLE part (
  id INTEGER NOT NULL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  price INTEGER,
  manufacturer VARCHAR(255)
);

DROP TABLE IF EXISTS assembly;

CREATE TABLE assembly (
  kit_id INTEGER,
  part_id INTEGER,
  amount INTEGER,
  PRIMARY KEY (kit_id, part_id),
  FOREIGN KEY (kit_id) REFERENCES kit(id),
  FOREIGN KEY (part_id) REFERENCES part(id)
);


INSERT OR IGNORE INTO student(id,name,email,parent_name,parent_email,address)
VALUES
(1, 'Ava', 'ava@gmail.com', 'Samantha', 'samantha@gmail.com', '1111 New Court Lane'),
(2, 'Bob', 'bob@gmail.com', 'Javier', 'javier@gmail.com', '2222 New Court Lane'),
(3, 'Clyde', 'clyde@gmail.com', 'Rachel', 'rachel@gmail.com', '3333 New Court Lane');

INSERT OR IGNORE INTO school(id,name,address,type,Title_I,principal)
VALUES
(1, 'Navy', '1111 New Court Lane', 'E', 0, 'John'),
(2, 'Rocky Run', '1234 New Court Lane', 'M', 1, 'Sarah');

INSERT OR IGNORE INTO study(student_id,school_id)
VALUES
(1, 2),
(2, 1),
(3, 2);

INSERT OR IGNORE INTO kit(id,type,name)
VALUES
(1, 'ES', 'Create an air cannon'),
(2, 'MS', 'Build a volcano');

INSERT OR IGNORE INTO purchase(student_id,kit_id, amount)
VALUES
(1, 2, 5),
(2, 1, 3),
(3, 2, 4);

INSERT OR IGNORE INTO part(id,name,price,manufacturer)
VALUES
(1, 'Styrofoam', 10, 'Amazon'),
(2, 'Cardboard Box', 15, 'Home Depot'),
(3, 'Play-Doh', 5, 'Toys-R-Us');

INSERT OR IGNORE INTO assembly(kit_id,part_id,amount)
VALUES
(1, 1, 2),
(1, 2, 3),
(2, 1, 5),
(2, 2, 3),
(2, 3, 7);