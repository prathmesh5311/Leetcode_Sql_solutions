# Write your MySQL query statement below
/*
TABLE: activity
query: find a solution to find daily active user count for a period of 30 days ending 2019/7/27 inclusively 
Output: day, active_users

*/
SELECT activity_date AS day, COUNT(DISTINCT user_id) AS active_users
 FROM activity
 WHERE DATEDIFF('2019/7/27', activity_date) BETWEEN 0 AND 29
 GROUP BY activity_date;