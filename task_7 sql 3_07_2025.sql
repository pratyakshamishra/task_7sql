create database retail_db;
use retail_db;

-- Departments Table
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

-- Workers Table
CREATE TABLE workers (
    worker_id INT PRIMARY KEY,
    worker_name VARCHAR(50),
    dept_id INT,
    salary DECIMAL(10, 2),
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);
-- Departments
INSERT INTO departments (dept_id, dept_name) VALUES
(1, 'HR'), (2, 'Finance'), (3, 'Engineering');

-- Workers
INSERT INTO workers (worker_id, worker_name, dept_id, salary) VALUES
(101, 'Ravi', 1, 30000),
(102, 'Sneha', 2, 55000),
(103, 'Ankit', 3, 70000),
(104, 'Meena', 3, 60000);

CREATE VIEW workers_summary AS
SELECT w.worker_id, w.worker_name, d.dept_name, w.salary
FROM workers w
JOIN departments d ON w.dept_id = d.dept_id;
select*from workers_summary;

CREATE VIEW high_earners AS
SELECT worker_name, salary
FROM workers
WHERE salary > 50000;
select* from high_earners;




