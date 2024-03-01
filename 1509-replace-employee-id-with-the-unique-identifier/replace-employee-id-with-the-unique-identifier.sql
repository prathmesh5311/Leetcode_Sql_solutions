# Write your MySQL query statement below
/*    */
SELECT eu.unique_id, e.name FROM employees AS e
LEFT JOIN employeeUNI AS eu
ON eu.id = e.id; 