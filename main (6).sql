CREATE TABLE students(
  id PRIMARY KEY,
  name VARCHAR ,
  marks INT ,
  gender CHAR,
  age INT
);

INSERT INTO students (id, name, marks, gender, age)
VALUES (1, 'Ali', 40, 'M', 12),
       (2, 'Ahmed', 60, 'M', 19),
       (3, 'Sara', 70, 'F', 20),
       (4, 'Mohammed', 5, 'M', 21),
       (5, 'Fatima', 10, 'F', 22);


--SELECT * FROM students;


--SELECT name, age FROM students;

--SELECT * FROM students WHERE id BETWEEN 2 AND 5;

--SELECT * FROM students WHERE id NOT IN (2,3,5);

--SELECT * FROM students WHERE gender ='F' LIMIT 3;

--SELECT * FROM students ORDER BY marks ASC LIMIT 2 ;

--SELECT * FROM students ORDER BY age ASC LIMIT 3;

--DELETE FROM students WHERE marks < 60;
--SELECT * FROM students;

SET SQL_SAFE_UPDATES = 0;

UPDATE students SET age > 18 WHERE marks > 60;

SELECT * FROM students;

