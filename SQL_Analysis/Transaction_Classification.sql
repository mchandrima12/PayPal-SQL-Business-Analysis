-- Problem statement
-- The finance team is evaluating transaction classifications.
-- Categorize transactions as 'High Value' (above $10,000) or 'Regular' (less than or equal to $10,000) and calculate the total amount for each category for the year 2023.

SELECT 
CASE
WHEN transaction_amount > 10000 THEN 'High Value'
ELSE 'Regular'
END AS  transaction_category,
SUM(transaction_amount) AS total_amount
FROM transactions
WHERE YEAR(transaction_date) = 2023
GROUP BY transaction_category
ORDER BY total_amount DESC;