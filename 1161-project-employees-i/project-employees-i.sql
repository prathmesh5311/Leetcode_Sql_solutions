# Write your MySQL query statement below
/*
Table: employee, project
query: SQL query that reports the average experience years of all the employees for each project, rounded to 2 digits.
*/
SELECT p.project_id, ROUND(AVG(experience_years),2) AS average_years FROM project AS p
LEFT JOIN employee AS e
ON e.employee_id = p.employee_id
GROUP BY p.project_id;