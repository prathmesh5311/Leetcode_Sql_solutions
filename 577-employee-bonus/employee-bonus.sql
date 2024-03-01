# Write your MySQL query statement below
SELECT e.name, b.bonus FROM employee AS e
LEFT JOIN bonus AS b 
ON b.empId = e.empId
WHERE bonus<1000 OR bonus IS null;