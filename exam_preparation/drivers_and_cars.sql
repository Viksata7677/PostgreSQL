SELECT
    first_name,
    last_name,
    make,
    model,
    mileage
FROM drivers as d
JOIN cars_drivers as cd ON d.id = cd.driver_id
JOIN cars as c ON cd.car_id = c.id
WHERE mileage IS NOT NULL
ORDER BY mileage DESC, first_name