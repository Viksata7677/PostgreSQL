CREATE OR REPLACE PROCEDURE sp_transfer_money(sender_id int, receiver_id int, money_amount NUMERIC(4))
AS
$$
DECLARE current_balance NUMERIC;
BEGIN
    CALL sp_withdraw_money(sender_id, money_amount);
    CALL sp_deposit_money(receiver_id, money_amount);

    SELECT balance INTO current_balance FROM accounts WHERE id = sender_id;

    IF current_balance < 0 THEN
        ROLLBACK;
    end if;
end;
$$
    LANGUAGE plpgsql;

CALL sp_withdraw_money(1, 100);