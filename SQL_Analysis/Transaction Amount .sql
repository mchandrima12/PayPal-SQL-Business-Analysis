-- Problem statement:
-- As a financial analyst at PayPal, you are tasked with analyzing transaction data to identify key markets.
-- Determine the top 5 countries by total transaction amount for both sending and receiving funds in the last quarter of 2023 (October to December 2023). 
-- Provide separate lists for the countries that sent the most funds and those that received the most funds. 
-- Additionally, round the totalsent and totalreceived amounts to 2 decimal places.

SELECT c.country_name, ROUND(SUM(t.transaction_amount),2) AS total_sent
FROM transactions t
JOIN users u ON t.sender_id = u.user_id
JOIN countries c ON u.country_id = c.country_id
WHERE t.transaction_date BETWEEN '2023-10-01' AND '2023-12-31 23:59:59'
GROUP BY c.country_name
ORDER BY total_sent DESC
LIMIT 5;

SELECT 
c.country_name, ROUND(SUM(t.transaction_amount), 2) AS total_received
FROM transactions t
JOIN users u ON t.recipient_id = u.user_id
JOIN countries c ON u.country_id = c.country_id
WHERE t.transaction_date BETWEEN '2023-10-01' AND '2023-12-31 23:59:59'
GROUP BY c.country_name
ORDER BY total_received DESC 
LIMIT 5;