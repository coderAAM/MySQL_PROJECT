CREATE TABLE payment(
  id INT PRIMARY KEY,
  customer VARCHAR,
  mode VARCHAR,
  city VARCHAR
);


INSERT INTO payment (id, customer, mode, city)
VALUES 
(101, 'John', 'Credit Card', 'New York'),
(102, 'Jane', 'Debit Card', 'Los Angeles'),
(103, 'Mike', 'Paypal', 'Chicago'),
(104, 'Sarah', 'Paypal', 'New York'),
(105, 'David', 'Credit Card', 'San Francisco'),
(106, 'Emily', 'Debit Card', 'Seattle'),
(107, 'James', 'Paypal', 'Boston'),
(108, 'Karen', 'Credit Card', 'Houston'),
(109, 'Mark', 'Debit Card', 'Miami'),
(110, 'Laura', 'Paypal', 'Dallas');

--SELECT mode, count (customer) FROM payment GROUP BY mode;

--SELECT city , COUNT (id) FROM payment GROUP BY city HAVING AVG (id) < 103 ORDER BY id;
--SELECT city, COUNT (id) FROM payment GROUP BY city HAVING AVG (id) < 103 ORDER BY id;

--SELECT mode, COUNT(id) FROM payment GROUP BY mode HAVING AVG (id) >101 ORDER BY id;

--SELECT city FROM payment;
/*SET SQL_SAFE_UPDATES = 0;

UPDATE payment SET mode = 'Easy paisa' WHERE mode = 'Credit Card';

SELECT * FROM payment;*/

SET SQL_SAFE_UPDATES = 0;
UPDATE payment SET mode = 'viza' WHERE id = 106;

SELECT * FROM payment;