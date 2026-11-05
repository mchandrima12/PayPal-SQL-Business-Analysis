-- Problem statement
-- As part of identifying top customers for a new loyalty program, the finance team needs to find the most valuable customer over the past year. 
-- Specifically, your task is to determine the user who has the highest total transaction amount from May 22, 2023, to May 22, 2024.
-- Please provide the details of this user, including their user ID, name, and total transaction amount. 
-- This information will help the finance team to select the most deserving customer for the loyalty program based on their transaction behavior over the specified period.

SELECT u.user_id as user_id, u.email as email, u.name as name, 
ROUND(SUM(t.transaction_amount),2) AS total_amount
FROM users u 
JOIN transactions t
ON u.user_id = t.sender_id 
WHERE t.transaction_date >= '2023-05-22'
AND t.transaction_date < '2024-05-23'
GROUP BY 
user_id,email, name
ORDER BY 
total_amount DESC
LIMIT 1;