CREATE TABLE students (
  id INT PRIMARY KEY,
  name VARCHAR ,
  age INT,
  grade CHAR
 
);

INSERT INTO students (id, name, age, grade)
VALUES (1, 'John', 18, 'A'),
       (2, 'Jane', 19, 'B'),
       (3, 'Mike', 20, 'B'),
       (4, 'Sara', 17, 'B'),
       (5, 'Tom', 18, 'B');

--SELECT * FROM students ORDER BY age DESC LIMIT 3;

/*SELECT * FROM students WHERE age > 18 ORDER BY grade ASC LIMIT 2;

SELECT MAX(age) FROM students ;

SELECT MIN(age) FROM students;

SELECT AVG(id) FROM students;*/

--SELECT COUNT (age) FROM students;

--SELECT age,name, COUNT(grade) FROM students WHERE grade ='A'  GROUP BY age,name LIMIT 4;

--SELECT age, name, COUNT(grade) FROM students WHERE grade = 'B'  GROUP BY age, name  LIMIT 3;













