SELECT * FROM employees;

CREATE View dept_avg_salary
AS
SELECT department_name, avg(salary) FROM employees GROUP BY department_name;


CREATE View text_view
AS
SELECT employee_name, salary, department_name
FROM employees
WHERE department_name in
(SELECT department_name FROM employees WHERE department_name LIKE '%R%');

SELECT * FROM text_view