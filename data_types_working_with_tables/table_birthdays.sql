CREATE TABLE minions_birthdays (
    id serial UNIQUE,
    name VARCHAR(50),
    date_of_birth DATE,
    age INTEGER,
    present VARCHAR(150),
    party TIMESTAMPTZ
)