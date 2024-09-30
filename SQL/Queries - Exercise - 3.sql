CREATE TABLE employees_2023 (
    employee_id INT PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(50)
);

CREATE TABLE employees_2024 (
    employee_id INT PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(50)
);

-- Insert records into employees_2023
INSERT INTO employees_2023 (employee_id, name, department) VALUES
(1, 'John Doe', 'Sales'),
(2, 'Jane Smith', 'Engineering'),
(3, 'Sam Brown', 'Marketing'),
(4, 'Nancy White', 'HR'),
(5, 'Paul Black', 'Finance');

-- Insert records into employees_2024
INSERT INTO employees_2024 (employee_id, name, department) VALUES
(2, 'Jane Smith', 'Engineering'),
(3, 'Sam Brown', 'Marketing'),
(6, 'Peter Parker', 'IT'),
(7, 'Mary Jane', 'Sales'),
(8, 'Bruce Wayne', 'Finance');

-- Query to Get a List of Unique Employees Across Both Years Using UNION
SELECT employee_id, name, department FROM employees_2023
UNION
SELECT employee_id, name, department FROM employees_2024;

-- Query to Find Employees Who Worked in Both Years Using INTERSECT
SELECT employee_id, name, department FROM employees_2023
INTERSECT
SELECT employee_id, name, department FROM employees_2024;

-- Query to Get Employees Who Worked Only in 2023 but Not in 2024 Using EXCEPT
SELECT employee_id, name, department FROM employees_2023
EXCEPT
SELECT employee_id, name, department FROM employees_2024;
