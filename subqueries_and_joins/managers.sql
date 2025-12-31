SELECT
    e.employee_id,
    CONCAT(e.first_name, ' ', e.last_name),
    e.department_id,
    d.name AS department_id
FROM employees as e RIGHT JOIN departments as d ON e.employee_id = d.manager_id
ORDER BY employee_id
LIMIT 5