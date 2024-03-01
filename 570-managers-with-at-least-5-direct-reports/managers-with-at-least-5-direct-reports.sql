# Write your MySQL query statement below
/*

Table: employee
query>> find managers with at least five dierect reports

*/
SELECT name FROM employee AS e
JOIN (select managerId from employee GROUP BY managerId HAVING count(*)>=5 ) AS a ON a.managerId = e.id;