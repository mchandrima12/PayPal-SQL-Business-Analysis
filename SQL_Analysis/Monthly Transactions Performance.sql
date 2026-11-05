-- Problem statement
-- The sales team wants to analyze the performance of each merchant by tracking their monthly total transaction amounts and identifying months where their transactions exceeded $50,000.
-- Write a query that calculates the total transaction amount for each merchant by month, and then create a column to indicate whether the merchant exceeded $50,000 in that month. 
-- The transaction date range should be considered from 1st Nov 2023 to 1st May 2024 (inclusive). 
-- The new column should contain the values 'Exceeded $50,000' or 'Did Not Exceed $50,000'. 
-- Display the merchant ID, business name, transaction year, transaction month, total transaction amount (rounding to 2 decimal place), and the new column indicating performance status.

SELECT m.merchant_id AS merchant_id, m.business_name AS business_name, 
YEAR(t.transaction_date) AS transaction_year,
MONTH(t.transaction_date) AS transaction_month,
ROUND(SUM(t.transaction_amount), 2) AS total_transaction_amount, 
CASE
WHEN SUM(t.transaction_amount) > 50000
THEN 'Exceeded $50,000'
ELSE 'Did Not Exceed $50,000'
END AS  performance_status
FROM transactions t 
JOIN merchants m 
ON t.recipient_id = m.merchant_id
WHERE t.transaction_date >= '2023-11-01' AND t.transaction_date < '2024-05-02'
GROUP BY m.merchant_id, m.business_name, 
YEAR(t.transaction_date),
MONTH(t.transaction_date) 
ORDER BY m.merchant_id ASC, 
transaction_year ASC, 
transaction_month ASC;