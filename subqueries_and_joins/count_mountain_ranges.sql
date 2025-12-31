SELECT
    country_code,
    COUNT(*) as mountain_range_count
FROM mountains as m
JOIN mountains_countries as mc ON m.id = mc.mountain_id
WHERE country_code IN ('US', 'RU', 'BG')
GROUP BY country_code
ORDER BY mountain_range_count DESC