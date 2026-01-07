SELECT
    a.name,
    CASE
        WHEN EXTRACT(HOUR FROM cou.start) BETWEEN 6 AND 20 THEN 'Day'
    ELSE 'Night' END as day_time,
    cou.bill,
    cli.full_name,
    car.make,
    car.model,
    cat.name
FROM courses as cou
JOIN addresses as a ON cou.from_address_id = a.id
JOIN clients as cli ON cou.client_id = cli.id
JOIN cars as car ON cou.car_id = car.id
JOIN categories as cat ON car.category_id = cat.id
ORDER BY cou.id