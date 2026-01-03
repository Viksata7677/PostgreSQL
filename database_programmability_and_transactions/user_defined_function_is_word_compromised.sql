CREATE OR REPLACE FUNCTION fn_is_word_compromised(set_of_letters varchar(50), word varchar(50))
RETURNS BOOLEAN AS
    $$
    BEGIN
        RETURN TRIM(LOWER(word), LOWER(set_of_letters)) = '';
    end;
    $$
LANGUAGE plpgsql;