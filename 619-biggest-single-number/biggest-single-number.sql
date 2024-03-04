# Write your MySQL query statement below
/*
Table: MyNumbers
Query: find largest single number, if there is no single number then report null
Output: num

*/
SELECT MAX(num) AS num FROM mynumbers
WHERE num IN
(SELECT num FROM Mynumbers GROUP BY num HAVING COUNT(*)=1);
