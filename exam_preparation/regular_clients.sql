SELECT
    cli.full_name,
    COUNT(cou.id) as count_of_cars,
    SUM(cou.bill) as total_sum
FROM clients as cli
         JOIN courses as cou
              ON cli.id = cou.client_id
WHERE SUBSTRING(cli.full_name, 2, 1) = 'a'
GROUP BY cli.full_name
HAVING COUNT(cou.id) > 1
ORDER BY cli.full_name