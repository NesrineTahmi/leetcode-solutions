SELECT 
    s.student_id,
    s.student_name,
    ss.subject_name,
    count(e.student_id) AS attended_exams
FROM Students AS s
CROSS JOIN Subjects AS ss
LEFT JOIN Examinations AS e
    ON e.student_id = s.student_id 
    AND e.subject_name = ss.subject_name
GROUP BY s.student_id, ss.subject_name
ORDER BY s.student_id , ss.subject_name 
