SELECT 
	employee_id,
    first_name,
    last_name,
    salary
FROM employees
WHERE salary > (
	SELECT 
    AVG(salary) AS average_salary 
    FROM employees
)