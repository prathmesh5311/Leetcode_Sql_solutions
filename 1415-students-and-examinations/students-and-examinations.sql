# Write your MySQL query statement below
/*
table: subjects, examinations, students

query>> number of times each student attended each exam
order by > student_id and subject_name


SELECT s.student_id, s.student_name, sub.subject_name, COUNT(e.subject_name) AS attended_exams FROM students AS s
CROSS JOIN subjects AS sub
LEFT JOIN examinations AS e
ON e.student_id = s.student_id AND sub.subject_name = e.subject_name
GROUP BY s.student_id, s.student_name, sub.subject_name
ORDER BY s.student_id, sub.subject_name;
*/
SELECT s.student_id, s.student_name, sub.subject_name, COUNT(e.subject_name) AS attended_exams FROM students AS s
CROSS JOIN subjects AS sub
LEFT JOIN examinations AS e
ON s.student_id = e.student_id AND SUB.SUBJECT_NAME = e.subject_name
GROUP BY s.student_id, s.student_name, sub.subject_name
ORDER BY s.student_id, sub.subject_name


