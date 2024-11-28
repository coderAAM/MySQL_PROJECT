CREATE TABLE employees (
  employees_id INT PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  email VARCHAR(50),
  phone_number VARCHAR(50),
  hire_date DATE,
  job_id INT,
  salary DECIMAL(10,2),
  department_id INT,
  manager_id INT
);

INSERT INTO employees (employees_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, department_id, manager_id)
VALUES 
  (1, 'John', 'Doe', 'mynbi@example.com', '555-1234', '2020-01-01', 1, 60000.00, 1, NULL),
  (2, 'Jane', 'Smith', 'tugrp@example.com', '555-5678', '2021-02-15', 2, 80000.00, 2, 1),
  (3, 'Bob', 'Johnson', 'ztejd@example.com', '555-9012', '2019-03-10', 3, 70000.00, 3, 2),
  (4, 'Alice', 'Williams', 'xcvkp@example.com', '555-3456', '2020-04-20', 4, 90000.00, 4, 3),
  (5, 'Mike', 'Brown', 'qpmzj@example.com', '555-7890', '2021-05-05', 5, 65000.00, 5, 4),
  (6, 'Sarah', 'Davis', 'tugrp@example.com', '555-2345', '2019-06-30', 6, 85000.00, 6, 5),
  (7, 'Tom', 'Jones', 'mynbi@example.com', '555-6789', '2020-07-15', 7, 75000.00, 7, 6);



CREATE TABLE departments (
  department_id INT PRIMARY KEY,
  department_name VARCHAR(50)
);

INSERT INTO departments (department_id, department_name)
VALUES 
  (1, 'Sales'),
  (2, 'Marketing'),
  (3, 'Finance'),
  (4, 'HR'),
  (5, 'IT'),
  (6, 'Legal'),
  (7, 'Operations');




CREATE TABLE jobs (
  job_id INT PRIMARY KEY,
  job_title VARCHAR(50),
  min_salary DECIMAL(10,2),
  max_salary DECIMAL(10,2)
);

INSERT INTO jobs (job_id, job_title, min_salary, max_salary)
VALUES 
  (1, 'Sales Representative', 5000.00, 10000.00),
  (2, 'Marketing Manager', 10000.00, 20000.00),
  (3, 'Financial Analyst', 8000.00, 15000.00),
  (4, 'Human Resources Manager', 12000.00, 18000.00),
  (5, 'IT Specialist', 7000.00, 13000.00),
  (6, 'Legal Officer', 9000.00, 14000.00),
  (7, 'Operations Manager', 11000.00, 16000.00);



CREATE TABLE employees_departments (
  employees_id INT,
  department_id INT,
  FOREIGN KEY (employees_id) REFERENCES employees(employees_id),
  FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

INSERT INTO employees_departments (employees_id, department_id)
VALUES 
  (1, 1),
  (2, 2),
  (3, 3),
  (4, 4),
  (5, 5),
  (6, 6),
  (7, 7);

CREATE TABLE employees_jobs (
  employees_id INT,
  job_id INT,
  FOREIGN KEY (employees_id) REFERENCES employees(employees_id),
  FOREIGN KEY (job_id) REFERENCES jobs(job_id)
);

INSERT INTO employees_jobs (employees_id, job_id)
VALUES 
  (1, 1),
  (2, 2),
  (3, 3),
  (4, 4),
  (5, 5),
  (6, 6),
  (7, 7);

CREATE TABLE employees_managers (
  employees_id INT,
  manager_id INT,
  FOREIGN KEY (employees_id) REFERENCES employees(employees_id),
  FOREIGN KEY (manager_id) REFERENCES employees(employees_id)
);

INSERT INTO employees_managers (employees_id, manager_id)
VALUES 
  (1, NULL),
  (2, 1),
  (3, 2),
  (4, 3),
  (5, 4),
  (6, 5),
  (7, 6);
SELECT * FROM employees;