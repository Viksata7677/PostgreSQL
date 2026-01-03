CREATE OR REPLACE FUNCTION fn_count_employees_by_town(town_name VARCHAR(20))
RETURNS int AS
    $$
    DECLARE town_count int;
        BEGIN
            SELECT INTO town_count COUNT(*)
            FROM employees as e
                     JOIN addresses as a USING (address_id)
                     JOIN towns as t USING (town_id)
            WHERE t.name = town_name;
            RETURN town_count;
        END;
    $$
language plpgsql