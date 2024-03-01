# Write your MySQL query statement below
/*
Table: cinema
query:report the movies with an odd-numbered ID and a description that is not "boring". Return the result table ordered by rating in descending order



*/

SELECT id, movie, description, rating FROM cinema
WHERE MOD(ID,2) AND description != 'boring'
ORDER BY rating DESC;