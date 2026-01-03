CREATE OR REPLACE FUNCTION fn_cash_in_users_games(game_name varchar(50))
RETURNS table(
    total_cash NUMERIC
             ) AS
    $$
    BEGIN
        RETURN QUERY
            WITH ranked_games AS (
                SELECT
                    cash,
                    row_number() over (ORDER BY cash DESC) as row_num
                FROM users_games as ug
                    JOIN games as g
                ON ug.game_id = g.id
                WHERE g.name = game_name
        )

        SELECT
            ROUND(SUM(CASH), 2) as total_cash
            FROM ranked_games
        WHERE row_num % 2 <> 0;
    end;
    $$
LANGUAGE plpgsql;

SELECT * FROM fn_cash_in_users_games('Love in a mist')