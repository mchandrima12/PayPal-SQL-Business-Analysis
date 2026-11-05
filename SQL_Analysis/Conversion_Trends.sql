-- Problem statement
-- The finance team wants to analyze the company's exposure to currency risks.
-- Analyze currency conversion trends from 22 May 2023 (inclusive) to 22 May 2024 (exclusive). 
-- Calculate the total amount converted from each source currency to the top 3 most popular destination currencies.

SELECT currency_code,
SUM(transaction_amount) AS total_converted
FROM transactions 
WHERE transaction_date >= '2023-05-22' 
AND transaction_date <  '2024-05-22'
GROUP BY currency_code
ORDER BY total_converted DESC 
LIMIT 3;