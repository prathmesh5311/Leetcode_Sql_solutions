# Write your MySQL query statement below
/*
Table: Teacher
Output: teacher_id, cnt
Query: query to calculate the number of unique subjects each teacher teaches in the university 
*/
SELECT teacher_id, COUNT(DISTINCT subject_id) AS cnt FROM teacher
GROUP BY teacher_id;