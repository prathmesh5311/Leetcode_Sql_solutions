# Write your MySQL query statement below
/*
Tables: prices, unitssold
QUERY: find the average selling price for each product. average_price should be rounded to 2 decimal places.

*/
SELECT p.product_id, IFNULL(ROUND(SUM(us.units*p.price)/SUM(us.units),2),0) AS average_price FROM prices AS p
LEFT JOIN unitssold AS us 
ON p.product_id = us.product_id AND us.purchase_date BETWEEN p.start_date AND p.end_date  # matching the purchase date with price range
GROUP BY product_id;
