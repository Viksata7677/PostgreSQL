SELECT
    b.booking_id,
    b.apartment_id,
    CONCAT(first_name, ' ', last_name) as companion_full_name
FROM bookings as b
    JOIN customers as c
        USING (customer_id)
WHERE b.apartment_id IS NULL