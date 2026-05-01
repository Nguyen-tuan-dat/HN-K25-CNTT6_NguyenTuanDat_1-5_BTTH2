CREATE DATABASE btth1_cntt6;
USE btth1_cntt6;

-- Ý1.
SELECT c.course_name, t.full_name AS teacher_name
FROM courses c
LEFT JOIN teachers t 
	ON c.teacher_id = t.id;

-- Ý2. 
SELECT full_name, date_of_birth, gender
FROM students
WHERE date_of_birth BETWEEN '2005-01-01' AND '2005-12-31';

-- Ý3. 
SELECT 
    s.full_name,
    s.id AS student_id,
    e.score
FROM enrollments e
INNER JOIN students s 
	ON e.student_id = s.id
INNER JOIN courses c 
	ON e.course_id = c.id
WHERE c.course_name = 'Lap trinh Web'
ORDER BY e.score DESC;

-- Ý4. 
SELECT 
    s.full_name AS student_name,
    c.course_name,
    t.full_name AS teacher_name
FROM enrollments e
INNER JOIN students s 
	ON e.student_id = s.id
INNER JOIN courses c 
	ON e.course_id = c.id
LEFT JOIN teachers t 
	ON c.teacher_id = t.id;
    