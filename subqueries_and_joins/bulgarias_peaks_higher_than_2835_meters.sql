SELECT
country_code,
mountain_range,
peak_name,
elevation
FROM mountains as m
JOIN peaks as p ON m.id = p.mountain_id
JOIN mountains_countries as mc ON m.id = mc.mountain_id
WHERE elevation > 2835 and country_code = 'BG'
ORDER BY elevation DESC