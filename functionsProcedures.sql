SELECT * FROM employees;

SELECT count(*) FROM employees;

CREATE Function emp_count()
RETURNS INT
LANGUAGE SQL
AS
$$
SELECT count(*) FROM employees
$$;

SELECT emp_count();

CREATE or REPLACE FUNCTION delete_emp()
RETURNS void
LANGUAGE SQL
AS
$$
DELETE FROM employees WHERE employee_id = 29
$$;

SELECT delete_emp();

CREATE OR REPLACE Function delete_emp_by_id(p_delete_id INT)
RETURNS void
LANGUAGE SQL
AS
$$
DELETE FROM employees WHERE employee_id = p_delete_id
$$;

SELECT delete_emp_by_id(28);

CREATE Procedure remove_emp()
LANGUAGE plpgsql
AS
$$
BEGIN
DELETE FROM employees WHERE employee_id = 26;
END
$$;

call remove_emp()