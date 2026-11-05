-- Problem statement
-- The sales team wants to identify top-performing merchants. 
-- Which merchant should be considered as the most successful in terms of total transaction amount received between November 2023 and April 2024?

-- Top Merchants from Nov 2023 to Apr 2024:

SELECT m.merchant_id, m.business_name, SUM(t.transaction_amount) AS total_received, AVG(t.transaction_amount) AS average_transaction
FROM Transactions t
JOIN Merchants m ON t.recipient_id = m.merchant_id
WHERE t.transaction_date >= '2023-11-01' AND t.transaction_date < '2024-05-01'
GROUP BY m.merchant_id, m.business_name
ORDER BY total_received DESC
LIMIT 10;