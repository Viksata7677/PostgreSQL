SELECT
    CONCAT(m.mountain_range, ' ', p.peak_name) as mountain_information,
    CHAR_LENGTH(CONCAT(m.mountain_range, ' ', p.peak_name)) AS characters_length,
    BIT_LENGTH(CONCAT(m.mountain_range, ' ', p.peak_name)) as bits_of_a_tring
FROM mountains as m,
     peaks as p
WHERE m.id = p.mountain_id