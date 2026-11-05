-- Problem Statement
-- The finance team is analyzing currency conversion trends to manage exposure to currency risks. 
-- Which currency had the highest transaction amount from in the past one year up to today indicating the greatest exposure? (assume today is 22-05-2024)

-- Currency Conversion Trends from May 2023 to April 2024

SELECT currency_code, SUM(transaction_amount) AS total_converted
FROM Transactions
WHERE transaction_date > '2023-05-22' AND transaction_date <= '2024-05-22'
GROUP BY currency_code
ORDER BY total_converted DESC
LIMIT 1;