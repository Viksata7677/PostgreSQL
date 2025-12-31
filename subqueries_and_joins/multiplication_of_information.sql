SELECT
    booking_id,
    first_name
FROM bookings as b CROSS JOIN
    customers as c
ORDER BY first_name