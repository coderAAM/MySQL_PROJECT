CREATE TABLE student(
  id PRIMARY KEY,
  name VARCHAR, -- Added comma here
  marks INT,
  grade CHAR,
  gender CHAR,
  city VARCHAR,
  country VARCHAR
);

INSERT INTO student(id, name, marks, grade, gender, city, country)
VALUES (1, 'ALI', 90, 'A', 'M', 'Lahore', 'Pakistan'),
(2, 'AYAN', 80, 'B', 'M', 'Karachi', 'Pakistan'),
(3, 'HASSAN', 50, 'B', 'M', 'Karach', 'pakistan'),
(4, 'BILAL', 60, 'B', 'M', 'islamabad', 'pakistan'),
(5, 'HASSAN', 30, 'B', 'M', 'islamabad', 'pakistan'),
(6, 'AHMED', 70, 'B', 'M', 'sukkur', 'pakistan');
SELECT * FROM student;

SELECT * FROM student WHERE marks >80 +10 AND city = 'Lahore';

--SELECT * FROM student WHERE marks >80 OR city = 'karachi';

--SELECT * FROM student WHERE marks BETWEEN 50 AND 90;

--SELECT * FROM student WHERE city NOT IN ('Lohore', 'Karachi');
