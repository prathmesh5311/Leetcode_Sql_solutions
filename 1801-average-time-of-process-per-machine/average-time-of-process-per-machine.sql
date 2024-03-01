# Write your MySQL query statement below
/*
 Write a solution to find the average time each machine takes to complete a process.

The time to complete a process is the 'end' timestamp minus the 'start' timestamp. 
The average time is calculated by the total time to complete every process on the machine divided by the number of processes that were run.

machine_id, average time as processing_time(rounded to 3 decimal pts)

*/

SELECT a1.machine_id, ROUND(AVG(a2.timestamp - a1.timestamp),3) AS processing_time FROM activity AS a1
JOIN activity a2
ON a1.machine_id=a2.machine_id AND a1.process_id = a2.process_id
AND a1.activity_type='start' AND a2.activity_type='end'
GROUP BY a1.machine_id ;