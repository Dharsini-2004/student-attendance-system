CREATE DATABASE IF NOT EXISTS AWS; 
SHOW databases; 
USE AWS; 
select * from students;
CREATE TABLE students( 
Student_id int primary key auto_increment, 
Student_Name varchar(50), 
Email varchar(50) not null, 
Department varchar(50) not null, 
Batch int  
); 
CREATE TABLE courses( 
course_id int primary key auto_increment, 
course_name varchar(50), 
instructor varchar(50) not null 
); 
CREATE TABLE Enrollments( 
enroll_id int primary key auto_increment, 
Student_id int, 
course_id int, 
enroll_date DATE, 
foreign key(Student_id) references students(Student_id), 
foreign key(course_id) references courses(course_id) 
); 
CREATE TABLE Attendance ( 
attendance_id INT PRIMARY KEY AUTO_INCREMENT, 
Student_id INT NOT NULL, 
course_id INT NOT NULL, 
date DATE NOT NULL, 
status ENUM('Present', 'Absent') NOT NULL, 
FOREIGN KEY (Student_id) REFERENCES Students(Student_id), 
FOREIGN KEY (course_id) REFERENCES Courses(course_id) 
); 
CREATE TABLE Marks ( 
mark_id INT PRIMARY KEY AUTO_INCREMENT, 
Student_id INT NOT NULL, 
course_id INT NOT NULL, 
exam_type varchar(50), 
score int NOT NULL, 
FOREIGN KEY (Student_id) REFERENCES Students(Student_id), 
FOREIGN KEY (course_id) REFERENCES Courses(course_id) 
); -- Insert Students 
INSERT INTO students (Student_Name, Email, Department, Batch) VALUES 
('Alice Thomas', 'alice@gmail.com', 'CSE', 2022), 
('Bob Mathews', 'bob@gmail.com', 'ECE', 2022), 
('Carol Lee', 'carol@gmail.com', 'EEE', 2022), 
('David Kumar', 'david@gmail.com', 'CSE', 2023), 
('Eva George', 'eva@gmail.com', 'CSE', 2023), 
('Franklin D', 'franklin@gmail.com', 'ECE', 2022), 
('Grace Pinto', 'grace@gmail.com', 'EEE', 2022), 
('Hannah Roy', 'hannah@gmail.com', 'CSE', 2023), 
('Ian Joseph', 'ian@gmail.com', 'ECE', 2023), 
('Julia Menon', 'julia@gmail.com', 'CSE', 2023), 
('Kayla Hall', 'mooreroger@yahoo.com', 'MECH', 2024), 
('Courtney Mcconnell', 'mannveronica@adams-hernandez.com', 'MECH', 2023), 
('Kelsey Martinez', 'elizabeth72@campbell.com', 'EEE', 2023), 
('Elizabeth Jones', 'patrick49@johnson.net', 'CSE', 2023), 
('Kelsey Tapia', 'rcannon@walsh-hawkins.org', 'EEE', 2024), 
('Jenna Keith', 'daniel59@carter.com', 'CIVIL', 2022), 
('Emily Kennedy', 'smurphy@gmail.com', 'MECH', 2023), 
('Samantha Bass', 'timothy40@yahoo.com', 'CIVIL', 2024), 
('Ralph Hull', 'xmcdonald@hotmail.com', 'CSE', 2024), 
('William Walsh', 'tmercado@hotmail.com', 'ECE', 2021), 
('Aaron Murphy', 'william.hill@yahoo.com', 'CIVIL', 2022); -- Insert Courses 
INSERT INTO courses (course_name, instructor) VALUES 
('DBMS', 'Dr. Prakash N'), 
('Operating Systems', 'Ms. Kavitha S'), 
('Networks', 'Mr. Arjun R'), 
('Networks', 'Thomas Johnson'), 
('OOPS', 'Eric Ward'), 
('OOPS', 'Don Cummings'), 
('DBMS', 'Megan Bentley'), 
('Cloud Computing', 'Jessica Baker'), 
('Cloud Computing', 'Angela Aguirre'), 
('Artificial Intellegence', 'Carrie Wood'), 
('Python', 'Christopher Porter'), 
('Java', 'Kayla Woods DDS'), 
('C', 'Courtney Jackson'), 
('C++', 'Derrick Bonilla'), 
('C#', 'Alicia Krause'), 
('Java', 'Gabriel Hays'), 
('C', 'Jacob Ray'), 
('C#', 'Jennifer James'); -- Insert Enrollments 
INSERT INTO Enrollments (Student_id, course_id, enroll_date) VALUES 
(1, 1, '2025-01-10'), (1, 2, '2025-01-10'), 
(2, 1, '2025-01-10'), (2, 3, '2025-01-11'), 
(3, 2, '2025-01-12'), (3, 3, '2025-01-13'), 
(4, 1, '2025-01-14'), (4, 2, '2025-01-14'), 
(5, 3, '2025-01-14'), (6, 1, '2025-01-14'), 
(7, 2, '2025-01-15'), (8, 3, '2025-01-15'), 
(9, 1, '2025-01-15'), (10, 2, '2025-01-15'); -- Insert Attendance 
INSERT INTO Attendance (Student_id, course_id, date, status) VALUES 
(1, 1, '2025-05-01', 'Present'), 
(1, 2, '2025-05-01', 'Absent'), 
(2, 1, '2025-05-01', 'Present'), 
(2, 3, '2025-05-02', 'Absent'), 
(3, 2, '2025-05-02', 'Present'), 
(3, 3, '2025-05-02', 'Present'), 
(4, 1, '2025-05-03', 'Present'), 
(4, 2, '2025-05-03', 'Absent'), 
(5, 3, '2025-05-03', 'Present'), 
(6, 1, '2025-05-03', 'Present'), 
(7, 2, '2025-05-04', 'Absent'), 
(8, 3, '2025-05-04', 'Present'), 
(9, 1, '2025-05-04', 'Absent'), 
(10, 2, '2025-05-04', 'Present'), 
(1, 1, '2025-05-05', 'Present'), 
(2, 3, '2025-05-05', 'Present'), 
(3, 2, '2025-05-05', 'Absent'), 
(4, 1, '2025-05-05', 'Present'), 
(5, 3, '2025-05-05', 'Absent'), 
(6, 1, '2025-05-06', 'Present'), 
(7, 2, '2025-05-06', 'Present'), 
(8, 3, '2025-05-06', 'Present'), 
(9, 1, '2025-05-06', 'Absent'), 
(10, 2, '2025-05-06', 'Present'); -- Insert Marks 
INSERT INTO Marks (Student_id, course_id, exam_type, score) VALUES 
(1, 1, 'Midterm', 78), 
(1, 2, 'Midterm', 84), 
(2, 1, 'Midterm', 66), 
(2, 3, 'Midterm', 70), 
(3, 2, 'Midterm', 88), 
(3, 3, 'Midterm', 90), 
(4, 1, 'Midterm', 73), 
(4, 2, 'Midterm', 69), 
(5, 3, 'Midterm', 91), 
(6, 1, 'Midterm', 75), 
(7, 2, 'Midterm', 62), 
(8, 3, 'Midterm', 89), 
(9, 1, 'Midterm', 55), 
(10, 2, 'Midterm', 93), 
(1, 1, 'Final', 85), 
(2, 1, 'Final', 79); 
SELECT * FROM students; 
SELECT * FROM courses; 
SELECT * FROM Enrollments; 
SELECT * FROM Attendance; 
SELECT * FROM Marks; -- Fetch all students enrolled dbms 
SELECT s.Student_id, s.Student_Name, c.course_name 
FROM students s 
JOIN Enrollments e ON s.Student_id = e.Student_id 
JOIN courses c ON e.course_id = c.course_id 
WHERE c.course_name = 'DBMS'; -- Get top scorers in each course (Midterm) 
SELECT m.course_id, c.course_name, s.Student_Name, m.score 
FROM Marks m 
JOIN students s ON s.Student_id = m.Student_id 
JOIN courses c ON c.course_id = m.course_id 
WHERE exam_type = 'Midterm' 
AND m.score = ( 
SELECT MAX(score) 
FROM Marks m2 
WHERE m2.course_id = m.course_id AND m2.exam_type = 'Midterm' 
); -- Get attendance percentage for each student in each course 
SELECT  
s.Student_id, 
s.Student_Name, 
c.course_name, 
COUNT(a.status) AS total_classes, 
SUM(a.status = 'Present') AS present_days, 
ROUND(SUM(a.status = 'Present') * 100.0 / COUNT(a.status), 2) AS 
attendance_percentage 
FROM Attendance a 
JOIN students s ON a.Student_id = s.Student_id 
JOIN courses c ON a.course_id = c.course_id 
GROUP BY s.Student_id, c.course_id; -- Get average marks per course 
SELECT  
c.course_name, 
AVG(m.score) AS average_score 
FROM Marks m 
JOIN courses c ON m.course_id = c.course_id 
GROUP BY c.course_id; -- Get students who are absent more than 2 times in a course 
SELECT  
s.Student_id, 
s.Student_Name, 
c.course_name, 
COUNT(*) AS absents 
FROM Attendance a 
JOIN students s ON s.Student_id = a.Student_id 
JOIN courses c ON c.course_id = a.course_id 
WHERE a.status = 'Absent' 
GROUP BY s.Student_id, a.course_id 
HAVING absents > 2; -- Create view to list students enrolled in all courses 
CREATE VIEW View_Students_In_Courses AS 
SELECT  
s.Student_id, 
s.Student_Name, 
c.course_name, 
e.enroll_date 
FROM students s 
JOIN Enrollments e ON s.Student_id = e.Student_id 
JOIN courses c ON c.course_id = e.course_id; 
SELECT * FROM View_Students_In_Courses WHERE course_name = 'Networks'; 
DELIMITER $$ -- Stored procedure to get all students in a given course 
CREATE PROCEDURE GetStudentsInCourse(IN courseTitle VARCHAR(50)) 
BEGIN 
SELECT s.Student_id, s.Student_Name, c.course_name 
FROM students s 
JOIN Enrollments e ON s.Student_id = e.Student_id 
JOIN courses c ON c.course_id = e.course_id 
WHERE c.course_name = courseTitle; 
END $$ 
DELIMITER ; 
CALL GetStudentsInCourse('OOPS'); 