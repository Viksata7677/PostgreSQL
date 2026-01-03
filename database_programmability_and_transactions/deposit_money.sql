CREATE OR REPLACE PROCEDURE sp_deposit_money(account_id int, money_amount numeric(4))
AS
    $$
    BEGIN
        UPDATE accounts
        SET balance = balance + money_amount
        WHERE id = account_id;
    end;
    $$
LANGUAGE plpgsql;

CALL sp_deposit_money(1, 200);

SELECT accounts.balance FROM accounts WHERE id = 1