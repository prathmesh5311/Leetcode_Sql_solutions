# Write your MySQL query statement below
/*
Table: followers
Query: write a solution that will. for each user, return the number of followers
Output: user_id, followers_count
*/
SELECT user_id,COUNT(follower_id) AS followers_count FROM followers
GROUP BY user_id
ORDER BY user_id asc;