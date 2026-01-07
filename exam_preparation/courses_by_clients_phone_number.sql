CREATE OR REPLACE FUNCTION fn_courses_by_client(phone_num VARCHAR(20))
RETURNS int AS
    $$
    BEGIN
        RETURN(
        SELECT
            COUNT(*)
        FROM courses as co
                 JOIN clients as cl ON co.client_id = cl.id
        WHERE cl.phone_number = phone_num);
    end;
    $$
LANGUAGE plpgsql;
