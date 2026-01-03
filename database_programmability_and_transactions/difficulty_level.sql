CREATE OR REPLACE FUNCTION fn_difficulty_level(level int)
RETURNS varchar AS
    $$
    DECLARE result varchar;
    BEGIN
        IF level <= 40 THEN
            result := 'Normal Difficulty';
        ELSIF level BETWEEN 41 AND 60 THEN
            result := 'Nightmare Difficulty';
        ELSE result := 'Hell Difficulty';
    end if;
        RETURN result;
    end;
    $$
LANGUAGE plpgsql;

SELECT
    user_id,
    level,
    cash,
    fn_difficulty_level(level) as difficulty_level
FROM users_games
ORDER BY user_id