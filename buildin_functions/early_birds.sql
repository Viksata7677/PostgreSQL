SELECT
    user_id,
    AGE(starts_at, booked_at) as early_birds
FROM bookings
WHERE
    AGE(starts_at, booked_at) >= '10 MONTHS'