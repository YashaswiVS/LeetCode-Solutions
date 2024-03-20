# Write your MySQL query statement below
SELECT st.student_id, st.student_name, s.subject_name, COUNT(e.subject_name) as attended_exams
FROM Students st
JOIN Subjects s
LEFT JOIN Examinations e 
ON st.student_id = e.student_id AND e.subject_name = s.subject_name 
GROUP BY st.student_id, st.student_name, s.subject_name
ORDER BY st.student_id, s.subject_name;
