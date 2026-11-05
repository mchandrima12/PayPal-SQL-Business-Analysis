-- Problem statement
-- As part of a financial analysis, the team needs to categorize transactions based on multiple criteria. 
-- Create a report that categorizes transactions into 'High Value International', 'High Value Domestic', 'Regular International', and 'Regular Domestic' 
-- based on the following criteria:
-- High Value: transaction amount > $10,000
-- International: sender and recipient from different countries
-- Categorize each transaction and count the number of transactions in each category for the year 2023.

SELECT 
CASE WHEN t.transaction_amount > 10000
AND s.country_id <> r.country_id THEN 'High Value International'
when t.transaction_amount > 10000
and s.country_id = r.country_id THEN 'High Value Domestic'
when t.transaction_amount <= 10000
and s.country_id <> r.country_id THEN 'Regular International'
else 'Regular Domestic'
end as transaction_category,
count(*) as transaction_count 
from transactions t 
left join users s 
on t.sender_id = s.user_id 
left join users r 
on t.recipient_id = r.user_id
where YEAR(t.transaction_date) = 2023
GROUP BY transaction_category
order by transaction_count desc;