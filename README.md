📌 SQL Mini Project – Student Course Management System
Overview

This project demonstrates a Student Course Management System using MySQL.
It covers database creation, table design, relationships, sample data insertion, views, and stored procedures.
The project helps in understanding RDBMS concepts like primary keys, foreign keys, joins, aggregate functions, views, and stored procedures.

🗂Database Schema

Database Name: AWS

Tables Created

Students

Stores student details (ID, Name, Email, Department, Batch).

Courses

Stores course details (Course ID, Name, Instructor).

Enrollments

Links students with courses they enrolled in.

Attendance

Tracks student attendance (Present/Absent).

Marks

Stores student exam scores for each course.

📊 Features Implemented

✅ Create and manage student, course, enrollment, attendance, and marks data.
✅ Insert sample data for testing.
✅ Perform queries to fetch useful insights like:

Students enrolled in specific courses.

Top scorers in each course (Midterm).

Attendance percentage of each student.

Students absent more than 2 times.

Average marks per course.

✅ View:

View_Students_In_Courses → Displays students with their enrolled courses and enrollment dates.

✅ Stored Procedure:

GetStudentsInCourse(courseTitle) → Fetches students enrolled in a given course.

⚙️ SQL Queries Demonstrated

SELECT with JOINs (Students enrolled in DBMS)

Aggregate Functions (AVG, COUNT, MAX)

GROUP BY & HAVING (Absentees > 2)

Views (Predefined query result storage)

Stored Procedures (Reusable query execution)
