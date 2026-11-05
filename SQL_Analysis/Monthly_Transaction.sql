-- Problem statement
-- As part of the financial review, the finance team requires detailed monthly transaction reports for the year 2023.
-- Your task is to extract the month and year from each transaction date and then calculate the total transaction amount for each month-year combination.
-- This will involve summarizing the total transactions on a monthly basis to provide a clear view of financial activities throughout the year. 
-- Please ensure that your report includes a breakdown of the total transaction amounts for each month and year combination for 2023, 
-- helping the finance team to review and analyze the company's monthly financial performance comprehensively.

SELECT 
YEAR(transaction_date) AS transaction_year,
MONTH(transaction_date) AS transaction_month,
SUM(transaction_amount) AS total_amount
FROM transactions 
WHERE YEAR(transaction_date) = 2023
GROUP BY 
YEAR(transaction_date),
MONTH(transaction_date)
ORDER BY
 transaction_year ASC,
transaction_month ASC;