SELECT
    mountain_range,
    peak_name,
    elevation
FROM mountains as m
    JOIN peaks as p
        ON m.id = p.mountain_id
WHERE m.mountain_range = 'Rila'
ORDER BY elevation DESC