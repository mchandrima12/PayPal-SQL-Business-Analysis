-- Problem statement
-- The finance department requires a comprehensive monthly report for the year 2023 that segments transactions by type and nature.
-- Specifically,the report should classify transactions into 'High Value' (above $10,000) and 'Regular' (below $10,000), 
-- and further differentiate them as either 'International' (sender and recipient from different countries) or 'Domestic' (sender and recipient from the same country).
-- Your task is to write a query that groups transactions by year, month, value_category, location_category,and then calculates both the total transaction amount and the average transaction amount for each group.
-- This detailed analysis will provide valuable insights into transaction patterns and help the finance department in their review and planning processes.

select
YEAR(t.transaction_date) AS transaction_year, 
MONTH(t.transaction_date) AS transaction_month, 
CASE
WHEN t.transaction_amount > 10000
THEN 'High Value'
ELSE 'Regular'
END AS value_category, 
CASE
WHEN s.country_id <> r.country_id
THEN 'International'
ELSE 'Domestic'
END AS location_category,
ROUND(SUM(t.transaction_amount), 2) AS total_amount,
ROUND(AVG(t.transaction_amount), 2) AS average_amount
FROM transactions t 
LEFT JOIN users s 
ON t.sender_id =s.user_id
LEFT JOIN users r 
ON t.recipient_id = r.user_id
WHERE YEAR(t.transaction_date) = 2023
GROUP BY 
 YEAR(t.transaction_date), 
MONTH(t.transaction_date),
CASE
WHEN t.transaction_amount > 10000
THEN 'High Value'
ELSE 'Regular'
END, 
CASE
WHEN s.country_id <> r.country_id
THEN 'International'
ELSE 'Domestic'
END 
ORDER BY transaction_year ASC, 
transaction_month ASC, 
value_category ASC,
location_category ASC;