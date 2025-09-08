# Student-Database-Management-System
This project is a comprehensive Student Database Management System built using PostgreSQL. It simulates how real-world educational institutions manage student information, attendance, academics, fees, and access control in one centralized schema.

🚀 Features
1. Centralized Student Data

Stores student details including personal info, enrollment year, and contact data.

2. Attendance Management

Tracks attendance by course and student, with status options (Present, Absent, Late).

3. Academic Performance

Records grades, marks obtained, and total marks across different courses and terms.

4. Fee Tracking

Manages tuition, hostel, library, lab, and other fee records with due dates, payment status, and receipts.

5. Course Management
Contains course details like name, description, credits, and department.

6. Data Security & Access Control

Defines roles (Admin, Student, Faculty) with permissions.
Maintains user accounts with role-based access and login activity.

🛠️ Tech Stack

PostgreSQL – Database engine

SQL – Schema design, DML & DDL operations

📌 Example Use Cases

Generate attendance reports for students.

Track pending fee payments and due dates.

Analyze academic performance by term/course.

Role-based access for admins, students, and faculty.

📂 Schema Highlights

students → core student info

attendance → daily attendance records

academic_performance → marks & grades

fee_records → payments and due status

courses → course catalog

user_roles & user_accounts → security & login management
