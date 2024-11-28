CREATE TABLE hospital(
hospital_id INT PRIMARY KEY,
hospital_name VARCHAR(50),
hospital_address VARCHAR(100),
hospital_phone_number VARCHAR(20),
hospital_state VARCHAR(50),
hospital_zip_code VARCHAR(10)
);

INSERT INTO hospital (hospital_id, hospital_name, hospital_address, hospital_phone_number, hospital_state, hospital_zip_code)
VALUES (1, 'Hospital A', '123 Main St', '555-1234', 'CA', '12345'),
(2, 'Hospital B', '456 Elm St', '555-5678', 'CA', '23456'),
(3, 'Hospital C', '789 Oak St', '555-9012', 'CA', '34567'),
(4, 'Hospital D', '321 Pine St', '555-3456', 'CA', '45678'),
(5, 'Hospital E', '654 Maple St', '555-7890', 'CA', '56789'),
(6, 'Hospital F', '987 Cedar St', '555-2345', 'CA', '67890'),
(7, 'Hospital G', '246 Birch St', '555-6789', 'CA', '78901');
-- departments table
CREATE TABLE departments(
department_id INT PRIMARY KEY,
department_name VARCHAR(50),
hospital_id INT
);
INSERT INTO departments (department_id, department_name, hospital_id)
VALUES (1, 'Cardiology', 1),
(2, 'Dermatology', 2),
(3, 'Gastroenterology', 3),
(4, 'Oncology', 4),
(5, 'Orthopedics', 5),
(6, 'Pediatrics', 6),
(7, 'Psychiatry', 7);
-- doctor table
CREATE TABLE doctors(
doctor_id INT PRIMARY KEY,
doctor_first_name VARCHAR(50),
doctor_last_name VARCHAR(50),
department_id INT,
doctor_phone_number VARCHAR(20)
);
INSERT INTO doctors (doctor_id, doctor_first_name, doctor_last_name, department_id, doctor_phone_number)
VALUES(1, 'John', 'Doe', 1, '555-1234'),
(2, 'Jane', 'Smith', 2, '555-5678'),
(3, 'Bob', 'Johnson', 3, '555-9012'),
(4, 'Sarah', 'Lee', 4, '555-3456'),
(5, 'Tom', 'Wilson', 5, '555-7890'),
(6, 'Emily', 'Brown', 6, '555-2345'),
(7, 'Michael', 'Davis', 7, '555-6789');
--  STAFF TABLE
CREATE TABLE staff(
staff_id INT PRIMARY KEY,
departments_id INT,
staff_first_name VARCHAR(50),
staff_last_name VARCHAR(50),
staff_phone_number VARCHAR(20),
staff_address VARCHAR(100)
);
INSERT INTO staff (staff_id, departments_id, staff_first_name, staff_last_name, staff_phone_number, staff_address)
VALUES (01, 1, 'Alice', 'Smith', '555-1234', '123 Main St'),
(02, 2, 'Bob', 'Johnson', '555-5678', '456 Elm St'),
(03, 3, 'Charlie', 'Brown', '555-9012', '789 Oak St'),
(04, 4, 'David', 'Lee', '555-3456', '321 Pine St'),
(05, 5, 'Eve', 'Wilson', '555-7890', '654 Maple St'),
(06, 6, 'Frank', 'Davis', '555-2345', '987 Cedar St'),
(07, 7, 'Grace', 'Garcia', '555-6789', '246 Birch St');
SELECT * FROM staff;