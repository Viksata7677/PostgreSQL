CREATE OR REPLACE FUNCTION fn_full_name(first_name varchar, last_name varchar)
RETURNS varchar AS
    $$
        DECLARE full_name varchar;
        BEGIN
            full_name := CONCAT(INITCAP(first_name), ' ', INITCAP(last_name));
            RETURN full_name;
        end;
    $$
LANGUAGE plpgsql;

SELECT * FROM fn_full_name('viktor', 'iordanov')