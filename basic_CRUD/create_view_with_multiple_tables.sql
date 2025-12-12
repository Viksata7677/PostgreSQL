CREATE VIEW view_addresses AS
SELECT
    concat(e.first_name, ' ', e.last_name) as full_name,
    department_id,
    concat(a.number, ' ', a.street) as address
FROM employees AS e, addresses AS a
WHERE e.address_id = a.id
ORDER BY address