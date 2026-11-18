-- ============================================
-- VUA-SEN307 Lab 5: SELECT, Filtering and Joins
-- Name: CHISOM EMMANUELLA OKOORNKWO  Matric: VUG/SEN/25/14752
-- ============================================


USE sen307_14752;
-- Task 1: Students in one department, sorted A-Z
-- Explanation: 
select s.full_name, d.dept_name 
from Student s 
join Department d 
on s.dept_id = d.dept_id 
where dept_name = 'Software Engineering' 
order by s.full_name asc;

-- Task 2: Courses with their lecturers (INNER JOIN)
-- Explanation: 
select c.course_title, l.full_name from Course c 
inner join CourseAllocation ca 
on c.course_id = ca.course_id
inner join Lecturer l on ca.lecturer_id = l.lecturer_id;


-- Task 3: Students and their courses (LEFT JOIN)
-- Explanation: 
select full_name, course_title from Student s
inner join Course c 
on c.dept_id = s.dept_id
where c.course_title = null or c.course_title is not null ;

-- Task 4: Filtering with AND / OR / IN / BETWEEN
-- Explanation: 
select * from Student s
inner join Department d 
on d.dept_id = s.dept_id
where dept_name = 'Software Engineering' or dept_name = 'Artificial Intelligence'
and gender = 'F'
and date_of_birth between '2024-01-01' and '2025-12-31';


-- Task 5: Paginating enrolments with LIMIT and OFFSET
-- Explanation: 
-- For the first page in the pagination: 
select * from Enrolment order by enrolment_id asc limit 10 offset 0;
select * from Enrolment order by enrolment_id asc limit 10 offset 10;

-- Why must you always use ORDER BY with LIMIT?
-- Without ORDER BY, SQL makes no promise about row order. 
-- A relational table is unordered. hence, the returned rows would be arranged in a non-organized order