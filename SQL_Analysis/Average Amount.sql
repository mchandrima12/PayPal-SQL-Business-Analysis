-- Problem statement
-- The sales team wants to evaluate the performance of merchants by creating a score based on their transaction amounts. The score is calculated as follows:
-- If total transactions exceed $50,000, the score is 'Excellent'
-- If total transactions are greater than $20,000 and lesser than or equal to $50,000, the score is 'Good'
-- If total transactions are greater than $10,000 and lesser than or equal to $20,000, the score is 'Average'
-- If total transactions are lesser than or equal to $10,000, the score is 'Below Average'
-- Write a query to assign a performance score to each merchant and calculate the average transaction amount for each performance category for the period from November 2023 to April 2024.

select m.merchant_id, m.business_name, 
ROUND(SUM(t.transaction_amount), 2) as total_received,
case
when sum(t.transaction_amount) > 50000 then 'Excellent'
when sum(t.transaction_amount) > 20000 then 'Good'
when sum(t.transaction_amount) > 10000 then 'Average'
else 'Below Average'
end as performance_score,
round(avg(t.transaction_amount),2) as average_transaction
from merchants m
join transactions t 
on m.merchant_id = t.recipient_id 
where t.transaction_date >= '2023-11-01'
and t.transaction_date < '2024-05-01'
group by m.merchant_id, m.business_name
order by 
case
when sum(t.transaction_amount) > 50000 then 1
when sum(t.transaction_amount) > 20000 then 2
when sum(t.transaction_amount) > 10000 then 3
else 4
end, 
total_received desc;
