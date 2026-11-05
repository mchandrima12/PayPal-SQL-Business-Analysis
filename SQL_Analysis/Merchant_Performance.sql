-- Problem statement
-- The sales team is interested in identifying the top-performing merchants based on the number of payments received. 
-- The analysis will help the sales team to better understand the performance of these key merchants during the specified timeframe.
-- Your task is to analyze the transaction data and determine the top 10 merchants, sorted by the total transaction amount they received, 
-- within the period from November 2023 to April 2024. For each of these top 10 merchants, 
-- provide the following details: merchant ID, business name, the total transaction amount received, and the average transaction amount.

ALTER TABLE merchants
RENAME COLUMN ï»¿merchant_id  TO merchant_id;

SELECT m.merchant_id as merchant_id, m.business_name as business_name, 
ROUND(SUM(t.transaction_amount), 2) AS total_received,
AVG(t.transaction_amount) AS average_transaction
 FROM merchants m 
JOIN transactions t
ON m.merchant_id = t.recipient_id
WHERE t.transaction_date >= '2023-11-01' 
AND t.transaction_date < '2024-05-01'
GROUP BY merchant_id, business_name
ORDER BY total_received DESC
LIMIT 10;