CREATE TABLE employees(
    emp_id INT,
    emp_name VARCHAR(50),
    dept_id INT
);

CREATE TABLE departments(
    dept_id int,
    dept_name VARCHAR(50)
)

INSERT INTO employees VALUES (1, 'john doe',101);

INSERT INTO employees VALUES (2, 'jane Saith',102);
INSERT INTO departments VALUES (101, 'Human Right');
INSERT INTO departments VALUES (102, 'Marketing');

SELECT * FROM employees;
SELECT * FROM departments;

SELECT * FROM employees
CROSS JOIN departments;
SELECT * FROM employees
NATURAL JOIN departments;