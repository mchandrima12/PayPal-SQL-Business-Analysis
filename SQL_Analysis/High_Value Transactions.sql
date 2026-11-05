-- Problem statement
-- To effectively manage risk, it's crucial to identify and monitor high-value transactions.
-- Find transactions exceeding $10,000 in the year 2023 and include transaction ID, sender ID, recipient ID (if available), transaction amount, and currency used.


ALTER TABLE transactions
RENAME COLUMN ï»¿transaction_id TO transaction_id;

SELECT 
transaction_id, sender_id, recipient_id, transaction_amount, currency_code
FROM transactions
WHERE transaction_amount > 10000
AND YEAR(transaction_date) = 2023
ORDER BY transaction_amount DESC;