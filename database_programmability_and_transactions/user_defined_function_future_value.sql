CREATE OR REPLACE FUNCTION fn_calculate_future_value(initial_sum decimal, yearly_interest_rate decimal, number_of_years int)
RETURNS decimal AS
    $$
    DECLARE result decimal;
    BEGIN
        result := TRUNC(initial_sum*pow(1+yearly_interest_rate,number_of_years), 4);
        RETURN result;
    end;
    $$
LANGUAGE plpgsql;

SELECT * FROM fn_calculate_future_value(1000, 0.1, 5)