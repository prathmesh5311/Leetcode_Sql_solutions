# Write your MySQL query statement below
/*
product_name, year, price> group by sale_id

*/
SELECT p.product_name, s.year, s.price 
FROM sales AS s
LEFT JOIN product AS p
ON p.product_id = s.product_id;
