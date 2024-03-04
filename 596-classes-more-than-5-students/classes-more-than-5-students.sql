# Write your MySQL query statement below
/*
Table: courses
Query: write a solution to find all the classes that have at least five students
Output: class

*/
SELECT Class  FROM courses 
GROUP BY class
HAVING count(student)>=5;