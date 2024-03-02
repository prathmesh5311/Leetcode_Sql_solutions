# Write your MySQL query statement below
/*
tables: signups, confirmatons
output: user_id, confirmation_rate
query: write a solution to find confirmation rate of each user 

*/
# Write your MySQL query statement below
SELECT s.user_id, ROUND(AVG(IF(c.action="confirmed",1,0)),2)AS confirmation_rate FROM signups AS s
LEFT JOIN confirmations AS c
ON c.user_id = s.user_id
GROUP BY user_id;