
CREATE DATABASE university_admission1;

use university_admission1;


CREATE TABLE admission (
  ID int(11) NOT NULL,
  name varchar(87) DEFAULT NULL,
  tot_cred int(11) DEFAULT NULL
)  

INSERT INTO admission (ID, name, tot_cred) VALUES
(112, 'kamrul', 101);


CREATE TABLE advisor (
  instructor_ID int(11) NOT NULL,
  student_ID int(11) NOT NULL
)  


INSERT INTO advisor (instructor_ID, student_ID) VALUES
(1, 101),
(2, 102),
(3, 103),
(4, 104),
(5, 105),
(6, 106),
(7, 107),
(8, 108),
(9, 109),
(10, 110);


CREATE TABLE classroom (
  building varchar(200) NOT NULL,
  room_number int(11) NOT NULL,
  capacity int(11) DEFAULT NULL
)  


INSERT INTO classroom (building, room_number, capacity) VALUES
('Arts', 101, 50),
('Business', 501, 70),
('Engineering', 301, 60),
('Health Sciences', 701, 65),
('Humanities', 301, 50),
('Liberal Arts', 501, 55),
('Math', 401, 55),
('Science', 201, 40),
('Social Sciences', 401, 60),
('Social Sciences', 601, 45);


CREATE TABLE course (
  course_id int(11) NOT NULL,
  title varchar(200) DEFAULT NULL,
  credits int(11) DEFAULT NULL
)  


INSERT INTO course (course_id, title, credits) VALUES
(1, 'Mathematics', 4),
(2, 'Physics', 3),
(3, 'Computer Science', 4),
(4, 'Biology', 3),
(5, 'History', 3),
(6, 'Economics', 4),
(7, 'Chemistry', 4),
(8, 'Psychology', 3),
(9, 'Sociology', 3),
(10, 'Political Science', 4);


CREATE TABLE course_dept (
  course_id int(11) NOT NULL,
  dept_name varchar(200) NOT NULL
)  


INSERT INTO course_dept (course_id, dept_name) VALUES
(1, 'Math'),
(2, 'Physics'),
(3, 'Computer Science'),
(4, 'Biology'),
(5, 'History'),
(6, 'Economics'),
(7, 'Chemistry');


CREATE TABLE department (
  dept_name varchar(255) NOT NULL,
  building int(11) DEFAULT NULL,
  budget int(11) DEFAULT NULL
)  


INSERT INTO department (dept_name, building, budget) VALUES
('Art', 401, 100000),
('Biology', 501, 130000),
('Chemistry', 101, 125000),
('Computer Science', 301, 150000),
('Economics', 701, 140000),
('English', 501, 120000),
('History', 601, 110000),
('Law', 301, 110000),
('Math', 401, 100000),
('Physics', 201, 120000);


CREATE TABLE instructor (
  ID int(11) NOT NULL,
  name varchar(200) DEFAULT NULL,
  salary int(11) DEFAULT NULL
)  


INSERT INTO instructor (ID, name, salary) VALUES
(1, 'jack', 60000),
(2, 'ratul', 65000),
(3, 'kajol', 62000),
(4, 'sami', 63000),
(5, 'mahim', 61000),
(6, 'zahid', 64000),
(7, 'ashfak', 63000),
(8, 'Rahim', 70000),
(9, 'Karim', 72000),
(10, 'Sumon', 68000);


CREATE TABLE inst_dept (
  inst_id int(11) NOT NULL,
  dept_name varchar(200) NOT NULL
)  


INSERT INTO inst_dept (inst_id, dept_name) VALUES
(1, 'Math'),
(2, 'Physics'),
(3, 'Computer Science'),
(4, 'Biology'),
(5, 'History'),
(6, 'Economics'),
(7, 'Chemistry'),
(8, 'English'),
(9, 'Physics'),
(10, 'Art');


CREATE TABLE recovary (
  ID int(11) NOT NULL,
  name varchar(87) DEFAULT NULL,
  tot_cred int(11) DEFAULT NULL
)  


INSERT INTO recovary (ID, name, tot_cred) VALUES
(112, 'kamrul', 101);


CREATE TABLE section (
  sec_id int(11) NOT NULL,
  semester varchar(200) NOT NULL,
  year int(11) NOT NULL
)  


INSERT INTO section (sec_id, semester, year) VALUES
(1, 'Fall', 2023),
(2, 'Spring', 2024),
(3, 'Summer', 2023),
(4, 'Fall', 2024),
(5, 'Spring', 2025),
(6, 'Summer', 2024),
(7, 'Fall', 2025),
(8, 'Fall', 2023),
(9, 'Spring', 2024),
(10, 'Summer', 2023);


CREATE TABLE sec_class (
  sec_id int(11) NOT NULL,
  semester varchar(200) NOT NULL,
  year int(11) NOT NULL,
  building varchar(200) NOT NULL,
  room_number int(11) NOT NULL
)  


INSERT INTO sec_class (sec_id, semester, year, building, room_number) VALUES
(1, 'Fall', 2023, 'Arts', 101),
(2, 'Spring', 2024, 'Business', 501),
(3, 'Summer', 2023, 'Engineering', 301),
(4, 'Fall', 2024, 'Health Sciences', 701),
(5, 'Spring', 2025, 'Math', 401),
(6, 'Summer', 2024, 'Science', 201),
(7, 'Fall', 2025, 'Social Sciences', 601),
(8, 'Fall', 2023, 'Humanities', 301),
(9, 'Spring', 2024, 'Social Sciences', 401),
(10, 'Summer', 2023, 'Liberal Arts', 501);


CREATE TABLE sec_course (
  sec_id int(11) NOT NULL,
  semester varchar(200) NOT NULL,
  year int(11) NOT NULL,
  course_id int(11) NOT NULL
)  


INSERT INTO sec_course (sec_id, semester, year, course_id) VALUES
(1, 'Fall', 2023, 1),
(2, 'Spring', 2024, 2),
(3, 'Summer', 2023, 3),
(4, 'Fall', 2024, 4),
(5, 'Spring', 2025, 5),
(6, 'Summer', 2024, 6),
(7, 'Fall', 2025, 7),
(8, 'Fall', 2023, 8),
(9, 'Spring', 2024, 9),
(10, 'Summer', 2023, 10);


CREATE TABLE student (
  ID int(11) NOT NULL,
  name varchar(200) DEFAULT NULL,
  tot_cred int(11) DEFAULT NULL
)  


INSERT INTO student (ID, name, tot_cred) VALUES
(101, 'Shamim', 90),
(102, 'Rifat', 85),
(103, 'Priyo Ghosh', 92),
(104, 'Masud', 88),
(105, 'Rayhan', 87),
(106, 'Shopnil', 91),
(107, 'Nafi', 89),
(108, 'Shihab', 95),
(109, 'Tanvir', 88),
(110, 'Nayeem', 92),
(111, 'shakib', 100);

CREATE TABLE stud_dept (
  student_ID int(11) NOT NULL,
  dept_name varchar(200) NOT NULL
)  

INSERT INTO stud_dept (student_ID, dept_name) VALUES
(101, 'Math'),
(102, 'Physics'),
(103, 'Computer Science'),
(104, 'Biology'),
(105, 'History'),
(106, 'Economics'),
(107, 'Chemistry'),
(108, 'English'),
(109, 'Physics'),
(110, 'Art');


CREATE TABLE takes (
  student_ID int(11) NOT NULL,
  sec_id int(11) NOT NULL,
  semester varchar(200) NOT NULL,
  year int(11) NOT NULL,
  grade varchar(100) DEFAULT NULL
)  


INSERT INTO takes (student_ID, sec_id, semester, year, grade) VALUES
(101, 1, 'Fall', 2023, 'A'),
(102, 2, 'Spring', 2024, 'B'),
(103, 3, 'Summer', 2023, 'A'),
(104, 4, 'Fall', 2024, 'B+'),
(105, 5, 'Spring', 2025, 'A-'),
(106, 6, 'Summer', 2024, 'A'),
(107, 7, 'Fall', 2025, 'B'),
(108, 8, 'Fall', 2023, 'A-'),
(109, 9, 'Spring', 2024, 'B+'),
(110, 10, 'Summer', 2023, 'A');


CREATE TABLE teaches (
  sec_id int(11) NOT NULL,
  semester varchar(200) NOT NULL,
  year int(11) NOT NULL,
  instructor_ID int(11) NOT NULL
)  


INSERT INTO teaches (sec_id, semester, year, instructor_ID) VALUES
(1, 'Fall', 2023, 1),
(2, 'Spring', 2024, 2),
(3, 'Summer', 2023, 3),
(4, 'Fall', 2024, 4),
(5, 'Spring', 2025, 5),
(6, 'Summer', 2024, 6),
(7, 'Fall', 2025, 7),
(8, 'Fall', 2023, 8),
(9, 'Spring', 2024, 9),
(10, 'Summer', 2023, 10);

SELECT * FROM admission;

ALTER TABLE admission
  ADD PRIMARY KEY (ID);


ALTER TABLE advisor
  ADD PRIMARY KEY (instructor_ID,student_ID),
  ADD KEY student_ID (student_ID);


ALTER TABLE classroom
  ADD PRIMARY KEY (building,room_number);


ALTER TABLE course
  ADD PRIMARY KEY (course_id);


ALTER TABLE course_dept
  ADD PRIMARY KEY (course_id,dept_name),
  ADD KEY dept_name (dept_name);


ALTER TABLE department
  ADD PRIMARY KEY (dept_name);


ALTER TABLE instructor
  ADD PRIMARY KEY (ID);


ALTER TABLE inst_dept
  ADD PRIMARY KEY (inst_id,dept_name),
  ADD KEY dept_name (dept_name);


ALTER TABLE recovary
  ADD PRIMARY KEY (ID);


ALTER TABLE section
  ADD PRIMARY KEY (sec_id,semester,year);


ALTER TABLE sec_class
  ADD PRIMARY KEY (sec_id,semester,year,building,room_number),
  ADD KEY building (building,room_number);


ALTER TABLE sec_course
  ADD PRIMARY KEY (sec_id,semester,year,course_id),
  ADD KEY course_id (course_id);


ALTER TABLE student
  ADD PRIMARY KEY (ID);


ALTER TABLE stud_dept
  ADD PRIMARY KEY (student_ID,dept_name),
  ADD KEY dept_name (dept_name);


ALTER TABLE takes
  ADD PRIMARY KEY (student_ID,sec_id,semester,year),
  ADD KEY sec_id (sec_id,semester,year);


ALTER TABLE teaches
  ADD PRIMARY KEY (sec_id,semester,year,instructor_ID),
  ADD KEY instructor_ID (instructor_ID);


ALTER TABLE advisor
  ADD CONSTRAINT advisor_ibfk_1 FOREIGN KEY (instructor_ID) REFERENCES instructor (ID),
  ADD CONSTRAINT advisor_ibfk_2 FOREIGN KEY (student_ID) REFERENCES student (ID);


ALTER TABLE course_dept
  ADD CONSTRAINT course_dept_ibfk_1 FOREIGN KEY (course_id) REFERENCES course (course_id),
  ADD CONSTRAINT course_dept_ibfk_2 FOREIGN KEY (dept_name) REFERENCES department (dept_name);


ALTER TABLE inst_dept
  ADD CONSTRAINT inst_dept_ibfk_1 FOREIGN KEY (inst_id) REFERENCES instructor (ID),
  ADD CONSTRAINT inst_dept_ibfk_2 FOREIGN KEY (dept_name) REFERENCES department (dept_name);


ALTER TABLE sec_class
  ADD CONSTRAINT sec_class_ibfk_1 FOREIGN KEY (sec_id,semester,year) REFERENCES section (sec_id, semester, year),
  ADD CONSTRAINT sec_class_ibfk_2 FOREIGN KEY (building,room_number) REFERENCES classroom (building, room_number);


ALTER TABLE sec_course
  ADD CONSTRAINT sec_course_ibfk_1 FOREIGN KEY (sec_id,semester,year) REFERENCES section (sec_id, semester, year),
  ADD CONSTRAINT sec_course_ibfk_2 FOREIGN KEY (course_id) REFERENCES course (course_id);


ALTER TABLE stud_dept
  ADD CONSTRAINT stud_dept_ibfk_1 FOREIGN KEY (student_ID) REFERENCES student (ID),
  ADD CONSTRAINT stud_dept_ibfk_2 FOREIGN KEY (dept_name) REFERENCES department (dept_name);


ALTER TABLE takes
  ADD CONSTRAINT takes_ibfk_1 FOREIGN KEY (student_ID) REFERENCES student (ID),
  ADD CONSTRAINT takes_ibfk_2 FOREIGN KEY (sec_id,semester,year) REFERENCES section (sec_id, semester, year);


ALTER TABLE teaches
  ADD CONSTRAINT teaches_ibfk_1 FOREIGN KEY (sec_id,semester,year) REFERENCES section (sec_id, semester, year),
  ADD CONSTRAINT teaches_ibfk_2 FOREIGN KEY (instructor_ID) REFERENCES instructor (ID);
COMMIT;


SELECT student.name, instructor.name AS advisor
FROM student
JOIN advisor ON student.ID = advisor.student_ID
JOIN instructor ON advisor.instructor_ID = instructor.ID;

SELECT * FROM admission;

SELECT * FROM recovary;

SELECT * FROM student;

INSERT INTO student(ID, name, tot_cred, ssc_gpa, hsc_gpa)
VALUES (114, "Saminul", 20, 4.7, 5.00);

SELECT * FROM admission;

ALTER Table student ADD COLUMN ssc_gpa FLOAT DEFAULT 0;

ALTER Table student ADD COLUMN hsc_gpa FLOAT DEFAULT 0;

ALTER Table admission ADD COLUMN ssc_gpa FLOAT DEFAULT 0;

ALTER Table admission ADD COLUMN hsc_gpa FLOAT DEFAULT 0;

ALTER Table admission ADD COLUMN waiver INT DEFAULT 0;

CREATE TRIGGER student_admission_trigger AFTER INSERT ON student FOR EACH ROW INSERT INTO admission (ID, name, tot_cred, ssc_gpa, hsc_gpa) VALUES (NEW.ID, NEW.name, NEW.tot_cred, NEW.ssc_gpa, NEW.hsc_gpa);


ALTER Table recovary ADD COLUMN ssc_gpa FLOAT DEFAULT 0;

ALTER Table recovary ADD COLUMN hsc_gpa FLOAT DEFAULT 0;

CREATE TRIGGER student_delete AFTER DELETE ON student FOR EACH ROW INSERT INTO recovary (ID, name, tot_cred, ssc_gpa, hsc_gpa)
    VALUES (OLD.ID, OLD.name, OLD.tot_cred, OLD.ssc_gpa, OLD.hsc_gpa);


CREATE TRIGGER calculate_waiver_trigger
BEFORE INSERT ON admission
FOR EACH ROW
BEGIN
    DECLARE total_gpa FLOAT;
    SET total_gpa = NEW.ssc_gpa + NEW.hsc_gpa;
    
    IF total_gpa > 8.5 THEN
        SET NEW.waiver = 55;
    ELSEIF total_gpa > 8.0 THEN
        SET NEW.waiver = 45;
    ELSEIF total_gpa > 7.5 THEN
        SET NEW.waiver = 30;
    ELSE
        SET NEW.waiver = 10;
    END IF;
END;

SELECT * FROM student;

INSERT INTO student(ID, name, tot_cred, ssc_gpa, hsc_gpa)
VALUES(120, "Somuya", 25, 3.55, 4.89);

SELECT * FROM admission;

DELETE FROM student WHERE Id = 118;

SELECT * FROM recovary;

SELECT * FROM student;

INSERT INTO student(ID, name, tot_cred, ssc_gpa, hsc_gpa)
VALUES(118, "Shila", 16, 4.35, 5.00);

SELECT * FROM admission;

DELETE FROM student WHERE Id = 116;
DELETE FROM student WHERE Id = 118;

SELECT * from recovary;


-- Start QUERY

-- 1. Join Function:
-- Write a SQL query to retrieve the names of students along with their advisor's name.

SELECT student.name, instructor.name AS advisor
FROM student
JOIN advisor ON student.ID = advisor.student_ID
JOIN instructor ON advisor.instructor_ID = instructor.ID;


--2. Aggregate Function:
-- Calculate the average total credits earned by students in the 'Computer Science' department.

SELECT AVG(tot_cred) AS avg_credits
FROM student
WHERE ID IN (SELECT student_ID FROM stud_dept WHERE dept_name = 'Computer Science');


--3. Conditional Query:
-- Retrieve the names of students who have earned a grade of 'A' in any course.

SELECT name
FROM student
WHERE ID IN (SELECT student_ID FROM takes WHERE grade = 'A');

--4. Join and Aggregate:
-- List the department names along with the total budget allocated to each department.

SELECT department.dept_name, SUM(budget) AS total_budget
FROM department
LEFT JOIN inst_dept ON department.dept_name = inst_dept.dept_name
GROUP BY department.dept_name;


--5. Nested Query with Join:
-- Find the names of students who are advised by instructors from the 'Economics' department.
SELECT student.name
FROM student
WHERE ID IN (SELECT student_ID FROM advisor WHERE instructor_ID IN (SELECT ID FROM instructor WHERE ID IN (SELECT inst_id FROM inst_dept WHERE dept_name = 'Economics')));


--6. Conditional with Join:
-- Retrieve the names of instructors who earn a salary greater than the average salary of instructors in the 'Math' department.

SELECT name
FROM instructor
WHERE salary > (SELECT AVG(salary) FROM instructor WHERE ID IN (SELECT inst_id FROM inst_dept WHERE dept_name = 'Math'));


--7. Aggregate with Group By:
-- Calculate the total capacity of classrooms in each building.
SELECT building, SUM(capacity) AS total_capacity
FROM classroom
GROUP BY building;


--8. Conditional with Aggregate:
-- Find the average salary of instructors who teach courses in the 'Science' department.

SELECT AVG(salary) AS avg_salary
FROM instructor
WHERE ID IN (SELECT instructor_ID FROM teaches WHERE sec_id IN (SELECT sec_id FROM sec_course WHERE course_id IN (SELECT course_id FROM course_dept WHERE dept_name = 'Science')));


--9. Multiple Joins:
-- List the names of students, along with the courses they are enrolled in and the instructors who teach those courses.
SELECT student.name, course.title, instructor.name AS instructor_name
FROM student
JOIN takes ON student.ID = takes.student_ID
JOIN sec_course ON takes.sec_id = sec_course.sec_id AND takes.semester = sec_course.semester AND takes.year = sec_course.year
JOIN course ON sec_course.course_id = course.course_id
JOIN teaches ON sec_course.sec_id = teaches.sec_id AND sec_course.semester = teaches.semester AND sec_course.year = teaches.year
JOIN instructor ON teaches.instructor_ID = instructor.ID;