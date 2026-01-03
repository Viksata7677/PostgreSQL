CREATE OR REPLACE FUNCTION fn_is_game_over(is_game_over boolean)
RETURNS table (
    name varchar,
     game_type_id int,
     is_finished bool)
    AS
    $$
    BEGIN
        RETURN QUERY SELECT
                    g.name,
                    g.game_type_id,
                    g.is_finished
                FROM games as g
                WHERE g.is_finished = is_game_over;
    end;
    $$
LANGUAGE plpgsql;
SELECT * FROM fn_is_game_over(TRUE)