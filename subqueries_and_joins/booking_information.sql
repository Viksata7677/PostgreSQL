SELECT
    b.booking_id,
    a.name AS apartment_owner,
    a.apartment_id,
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name
FROM apartments as a
    FULL JOIN bookings as b
        ON a.booking_id = b.booking_id
    FULL JOIN customers as c
        ON b.customer_id = c.customer_id
ORDER BY booking_id, apartment_owner, customer_name