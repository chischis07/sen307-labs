use sen307_14752;

INSERT INTO Department (dept_name) VALUES
('Software Engineering'),
('Computer Science'),
('Artificial Intelligence'),
('Data Science'),
('Cybersecurity');
INSERT INTO Course (course_code, course_title, credit_units, description, dept_id) VALUES
('SEN307', 'Database Systems', 3,
'Relational database design, SQL queries, normalization, transactions and indexing using
MySQL.',
(SELECT dept_id FROM Department WHERE dept_name = 'Software Engineering')),
('SEN301', 'Software Architecture', 3,
'Architectural styles, design patterns, microservices and how to structure large software
systems.',
(SELECT dept_id FROM Department WHERE dept_name = 'Software Engineering')),
('COS301', 'Operating Systems', 3, 'Processes, threads, CPU scheduling, memory management and file systems.',
(SELECT dept_id FROM Department WHERE dept_name = 'Computer Science')),
('COS305', 'Computer Networks', 3,
'TCP/IP, routing, switching, LAN and WAN design and network protocols.',
(SELECT dept_id FROM Department WHERE dept_name = 'Computer Science')),
('AIN301', 'Introduction to Artificial Intelligence', 3,
'Intelligent agents, search algorithms, knowledge representation and reasoning.',
(SELECT dept_id FROM Department WHERE dept_name = 'Artificial Intelligence')),
('AIN305', 'Machine Learning', 3,
'Supervised and unsupervised learning, neural networks, deep learning and model
evaluation.',
(SELECT dept_id FROM Department WHERE dept_name = 'Artificial Intelligence')),
('AIN307', 'Natural Language Processing', 3,
'Text processing, word embeddings, language models, sentiment analysis and chatbots.',
(SELECT dept_id FROM Department WHERE dept_name = 'Artificial Intelligence')),
('DTS301', 'Data Visualization and Analytics', 2,
'Exploratory data analysis, charts, dashboards and telling stories with data.',
(SELECT dept_id FROM Department WHERE dept_name = 'Data Science')),
('DTS305', 'Big Data Technologies', 3,
'Distributed storage and processing of very large datasets with Hadoop and Spark.',
(SELECT dept_id FROM Department WHERE dept_name = 'Data Science')),
('CYB301', 'Network Security', 3,
'Firewalls, cryptography, intrusion detection and protecting networks from attacks.',
(SELECT dept_id FROM Department WHERE dept_name = 'Cybersecurity'));
SELECT d.dept_name, COUNT(c.course_id) AS courses
FROM Department d LEFT JOIN Course c ON d.dept_id = c.dept_id
GROUP BY d.dept_name;


SELECT dept_id, dept_name FROM Department;
SELECT course_id, course_code FROM Course;



INSERT INTO Lecturer (staff_no, full_name, email, dept_id) VALUES
('VUA/ST/101', 'Dr Amaka Okafor', 'a.okafor@vua.edu.ng', 1),
('VUA/ST/102', 'Dr Musa Bello', 'm.bello@vua.edu.ng', 1),
('VUA/CSC/103', 'Mr Tio Adewale', 'tioade@vua.edu.ng', 2),
('VUA/CSC/104', 'Mrs Mary Kama', 'marykama10@vua.edu.ng', 2),
('VUA/AI/105', 'Dr Victor Cyril', 'cyrilv@vua.edu.ng', 3),
('VUA/AI/106', 'Prof. Eng. Helena Okwudili', 'eng-hen@vua.edu.ng', 3),
('VUA/DS/107', 'Mr Chibuzor Gerald', 'chiger225@vua.edu.ng', 4),
('VUA/DS/108', 'Mrs. Ifeoma Claire', 'ifee23@vua.edu.ng', 4),
('VUA/CYB/109', 'Mr James Derek', 'derekj@vua.edu.ng', 5),
('VUA/CYB/110', 'Mr Harry Uduak', 'harryuduak01@vua.edu.ng', 5);

-- Insert the students into the table
INSERT INTO Student (matric_no, full_name, gender, date_of_birth, dept_id) VALUES
('20231234', 'Ada Obi', 'F', '2005-03-14', 1),
('20231235', 'John Musa', 'M', '2004-11-02', 2),
('20231236', 'James Anekwe', 'M', '2006-01-01', 1),
('20231237', 'Havillah Favour', 'F', '2006-04-12', 2),
('20231238', 'Habiba Salisu', 'F', '2007-07-17', 3),
('20231239', 'Abubakar Balarabe', 'M', '2006-08-28', 3),
('20231240', 'Adebowale Adewale', 'M', '2006-09-12', 4),
('20231241', 'Oghenefejiro Use', 'M', '2005-01-20', 4),
('20231242', 'Monica Oche', 'F', '2006-04-23', 5),
('20231243', 'Opeoluwa Ogbesola', 'F', '2006-12-28', 5),
('20231244', 'Gbemini Asolade', 'F', '2007-01-12', 1),
('20231245', 'Ashraf Abdullahi', 'M', '2004-09-30', 1),
('20231246', 'Mary Eke', 'F', '2004-11-12', 2),
('20231247', 'Karissa Idoko', 'F', '2005-05-16', 2),
('20231248', 'Oche Igberi', 'M', '2004-12-31', 3),
('20231249', 'Patric Henry', 'M', '2006-09-18', 3),
('20231250', 'Lamis Ahmed', 'F', '2006-07-27', 4),
('20231251', 'Usman Lawal', 'M', '2004-04-02', 4),
('202514752', 'Chisom Okoronkwo', 'F', '2005-05-07', 5),
('20231252', 'Daniella Winfrey', 'F', '2005-05-03', 5);

SELECT student_id, matric_no, full_name FROM Student;
SELECT lecturer_id, full_name FROM Lecturer;

select * from Course;

INSERT INTO Enrolment (student_id, course_id) VALUES
(1, 1), (1, 2),
(2, 1), (2, 3),
(3, 2), (3, 4),
(4, 3), (4, 5),
(5, 4), (5, 6),
(6, 5), (6, 7),
(7, 6), (7, 8),
(8, 7), (8, 9),
(9, 8), (9, 10),
(10, 9), (10, 1),
(11, 10), (11, 2),
(12, 1), (12, 4),
(13, 2), (13, 5),
(14, 3), (14, 6),
(15, 4), (15, 7),
(16, 5), (16, 8),
(17, 6), (17, 9),
(18, 7), (18, 10),
(19, 8), (19, 3),
(20, 9), (20, 10);


INSERT INTO CourseAllocation (course_id, lecturer_id) VALUES
(1, 1), (1, 2), (2, 2), (3, 3), (4, 4), (5, 5), (6, 6), (6, 1), (7, 7), (8, 8), (9, 9), (10, 10);

-- Test: moving a student to another department.
SELECT matric_no, full_name, dept_id FROM Student WHERE matric_no = '20231234';
UPDATE Student SET dept_id = 2 WHERE matric_no = '20231234';
SELECT matric_no, full_name, dept_id FROM Student WHERE matric_no = '20231234';

-- Inserting my personal update query to a record
SET SQL_SAFE_UPDATES = 0;
UPDATE Student SET dept_id = 4 WHERE matric_no = '202514752';
select matric_no, full_name, dept_id from Student where matric_no  = '202514752';
SET SQL_SAFE_UPDATES = 1;

-- Creating a new department and inserting a student into it
INSERT INTO Department (dept_name) VALUES ('Library and Information Science');
INSERT INTO Student (matric_no, full_name, dept_id)
VALUES ('20239999', 'Transfer Student',
(SELECT dept_id FROM Department WHERE dept_name = 'Library and Information
Science'));


select * from Department;

-- Attempting to delete from the department
DELETE FROM Department WHERE dept_name = 'Library and Information Science';

-- Step 1: reassign the dependent student to another department
UPDATE Student
SET dept_id = (SELECT dept_id FROM Department
WHERE dept_name = 'Software Engineering')
WHERE matric_no = '20239999';
-- Step 2: now the delete succeeds
DELETE FROM Department WHERE dept_name = 'Library and Information Science';
SELECT * FROM Department;


SELECT 'Departments' AS tbl, COUNT(*) AS total FROM Department
UNION ALL SELECT 'Lecturers', COUNT(*) FROM Lecturer
UNION ALL SELECT 'Students', COUNT(*) FROM Student
UNION ALL SELECT 'Courses', COUNT(*) FROM Course
UNION ALL SELECT 'Enrolments', COUNT(*) FROM Enrolment
UNION ALL SELECT 'Allocations', COUNT(*) FROM CourseAllocation;
