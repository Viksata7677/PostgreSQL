SELECT
    apartment_id,
    booked_for,
    first_name,
    country
FROM bookings as b
    JOIN customers USING (customer_id)
WHERE job_type LIKE 'Lead'