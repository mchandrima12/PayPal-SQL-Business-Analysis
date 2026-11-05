-- Problem statement
-- To meet compliance requirements, the finance team needs to identify the nature of transactions conducted by the company.
-- Specifically, you are required to analyze transaction data for the first quarter of 2024 (January to March).
-- Your task is to create a new column in the dataset that indicates whether each transaction is international (where the sender and recipient are from different countries) or 
-- domestic (where the sender and recipient are from the same country). Additionally, provide a count of the number of international and domestic transactions for this period.
-- This classification will assist in ensuring compliance with relevant regulations and provide insights into the distribution of transaction types. 
-- Please include a detailed summary of the counts for each type of transaction.

SELECT transaction_type,
COUNT(*) AS transaction_count
FROM 
(
SELECT 
CASE WHEN s.country_id = r.country_id THEN 'Domestic'
ELSE 'International'
END AS transaction_type
FROM transactions t 
JOIN users s
ON t.sender_id = s.user_id 
JOIN users r 
ON t.recipient_id = r.user_id
WHERE t.transaction_date >= '2024-01-01'
AND t.transaction_date < '2024-04-01'
) x
GROUP BY transaction_type
ORDER BY transaction_count DESC; 
