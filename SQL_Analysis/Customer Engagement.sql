-- Problem statement
-- The marketing team wants to identify users who have been consistently engaged over the last year (from May 2023 to April 2024).
-- A consistently engaged user is defined as one who has made at least one transaction in at least 6 out of the 12 months during this period.
-- Write a query to list user IDs and their email addresses for users who have made at least one transaction in at least 6 out of 12 months from May 2023 to April 2024.

SELECT u.user_id AS  user_id, 
u.email AS email
FROM users u 
JOIN transactions t 
ON u.user_id = t.sender_id
WHERE t.transaction_date >= '2023-05-01'
AND t.transaction_date < '2024-05-01'
GROUP BY u.user_id,
u.email
HAVING  COUNT(DISTINCT CONCAT(YEAR(t.transaction_date), MONTH(t.transaction_date))) >=6
ORDER BY u.user_id ASC;