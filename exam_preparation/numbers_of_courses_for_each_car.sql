SELECT
    car_id,
    make,
    mileage,
    COUNT(car_id) as count_of_courses,
    ROUND(AVG(bill), 2) as average_bill
FROM cars as car
LEFT JOIN courses as cou ON car.id = cou.car_id
GROUP BY car.id
HAVING COUNT(cou.id) <> 2
ORDER BY count_of_courses DESC, car.id