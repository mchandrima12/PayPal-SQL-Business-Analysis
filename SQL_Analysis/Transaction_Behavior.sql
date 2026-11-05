-- Problem statement
-- To improve user segmentation, the finance team needs to analyze user transaction behavior.
-- Your task is to calculate the average transaction amount per user (Round up to 2 Decimal Places) for the past six months, 
-- covering the period from 1 November 2023(inclusive) to 1 May 2024(exclusive). 
-- Once you have the average transaction amount for each user, identify and list the users whose average transaction amount exceeds $5,000.
-- This analysis will help the finance team to better understand high-value users and tailor strategies to meet their needs.

SELECT u.user_id as user_id,  u.email as email, 
ROUND(AVG(t.transaction_amount), 2) AS avg_amount
FROM users u 
JOIN transactions t 
ON u.user_id = t.sender_id 
WHERE t.transaction_date >= '2023-11-01'
AND t.transaction_date <= '2024-05-01'
GROUP BY user_id, email
HAVING AVG (t.transaction_amount) > 5000
ORDER BY u.user_id ASC;