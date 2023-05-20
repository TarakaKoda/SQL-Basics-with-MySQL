SELECT 
	employee_id,
    first_name,
    last_name,
    SUM(salary)
FROM employees e
JOIN offices USING (office_id)
WHERE e.salary > (
	SELECT AVG(salary)
    FROM employees
    WHERE office_id = e.office_id
) 
GROUP BY employee_id 

