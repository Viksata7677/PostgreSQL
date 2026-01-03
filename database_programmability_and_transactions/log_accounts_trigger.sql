CREATE TABLE IF NOT EXISTS logs(
    id SERIAL PRIMARY KEY,
    account_id INT,
    old_sum NUMERIC(20, 4),
    new_sum NUMERIC(20, 4)
);

CREATE OR REPLACE FUNCTION trigger_fn_insert_new_entry_into_logs()
RETURNS TRIGGER AS
    $$
    BEGIN
        INSERT INTO logs(account_id, old_sum, new_sum)
        VALUES(OLD.account_id, OLD.balance, NEW.balance);
        RETURN NEW;
    end;
    $$
LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER tr_accounts_balance_change
AFTER UPDATE OF
    balance
ON
    accounts
FOR EACH ROW
WHEN
    (NEW.balance <> OLD.balance)
EXECUTE FUNCTION
    trigger_fn_insert_new_entry_into_logs();