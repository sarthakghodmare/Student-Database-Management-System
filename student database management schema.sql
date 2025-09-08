--1. Centralized Student Data
create Table sarthak.students (
 Studentid INT primary key,
 firstname varchar(50),
 lastname varchar(50),
 enrollment_year INT,
 contact_number varchar(15),
 email varchar(150),
 address TEXT,
 date_of_birth DATE,
 gender varchar(1)  
)

INSERT INTO sarthak.students (Studentid, firstname, lastname, enrollment_year, contact_number, email, address, date_of_birth, gender) 
VALUES
(1, 'John', 'Doe', 2021, '9876543210', 'john.doe@example.com', '789 Birch Rd', '2002-05-14', 'M'),
(2, 'Emily', 'Clark', 2022, '8765432109', 'emily.clark@example.com', '456 Maple Ave', '2003-09-23', 'F'),
(3, 'Michael', 'Brown', 2020, '7654321098', 'michael.brown@example.com', '123 Pine St', '2001-12-30', 'M'),
(4, 'Sarah', 'Johnson', 2023, '6543210987', 'sarah.johnson@example.com', '321 Oak Blvd', '2004-03-10', 'F'),
(5, 'David', 'Lee', 2024, '5432109876', 'david.lee@example.com', '654 Elm Ct', '2005-11-18', 'M'),
(6, 'Sophia', 'Taylor', 2021, '4321098765', 'sophia.taylor@example.com', '123 Cedar Rd', '2002-07-07', 'F'),
(7, 'William', 'Harris', 2020, '3210987654', 'william.harris@example.com', '456 Pine Ct', '2001-08-12', 'M'),
(8, 'Olivia', 'Martin', 2023, '2109876543', 'olivia.martin@example.com', '789 Oak St', '2004-01-29', 'F'),
(9, 'James', 'Lee', 2022, '1098765432', 'james.lee@example.com', '321 Maple St', '2003-02-18', 'M'),
(10, 'Isabella', 'White', 2024, '9876501234', 'isabella.white@example.com', '654 Birch Ave', '2005-10-25', 'F'),
(11, 'Liam', 'Garcia', 2023, '8765432109', 'liam.garcia@example.com', '321 Birch Rd', '2004-11-14', 'M'),
(12, 'Emma', 'Martinez', 2022, '7654321098', 'emma.martinez@example.com', '654 Maple Blvd', '2003-04-17', 'F'),
(13, 'Benjamin', 'Rodriguez', 2021, '6543210987', 'benjamin.rodriguez@example.com', '123 Cedar Rd', '2002-08-30', 'M'),
(14, 'Mia', 'Perez', 2020, '5432109876', 'mia.perez@example.com', '987 Oak St', '2001-07-12', 'F'),
(15, 'Noah', 'Lee', 2024, '4321098765', 'noah.lee@example.com', '321 Pine Ct', '2005-01-04', 'M'),
(16, 'Ava', 'Hernandez', 2023, '3210987654', 'ava.hernandez@example.com', '456 Maple Blvd', '2004-05-06', 'F'),
(17, 'Ethan', 'Martinez', 2022, '2109876543', 'ethan.martinez@example.com', '789 Pine Rd', '2003-09-17', 'M'),
(18, 'Charlotte', 'Lopez', 2021, '1098765432', 'charlotte.lopez@example.com', '654 Oak Blvd', '2002-10-14', 'F'),
(19, 'Oliver', 'Gonzalez', 2020, '9876501234', 'oliver.gonzalez@example.com', '123 Birch St', '2001-06-23', 'M'),
(20, 'Amelia', 'Wilson', 2024, '8765432109', 'amelia.wilson@example.com', '321 Cedar Blvd', '2005-12-04', 'F')

select * from sarthak.students


--.2. Attendance Management
create Table sarthak.attendance (
 attendanceid INT primary key,
 Studentid INT,
 courseid INT,
 attendance_date DATE,
 status varchar(1),
 FOREIGN KEY (Studentid) REFERENCES  sarthak.students (Studentid),
 FOREIGN KEY (courseid) REFERENCES sarthak.courses (courseid)
)

INSERT INTO sarthak.attendance (attendanceid, Studentid, courseid, attendance_date, status) 
VALUES
(1, 1, 201, '2025-01-01', 'P'),
(2, 2, 202, '2025-01-01', 'A'),
(3, 3, 203, '2025-01-01', 'L'),
(4, 4, 204, '2025-01-02', 'P'),
(5, 5, 205, '2025-01-02', 'A'),
(6, 6, 206, '2025-01-02', 'P'),
(7, 7, 207, '2025-01-03', 'L'),
(8, 8, 208, '2025-01-03', 'P'),
(9, 9, 209, '2025-01-03', 'A'),
(10, 10, 210, '2025-01-04', 'P'),
(11, 11, 201, '2025-01-04', 'P'),
(12, 12, 202, '2025-01-05', 'A'),
(13, 13, 203, '2025-01-05', 'L'),
(14, 14, 204, '2025-01-06', 'P'),
(15, 15, 205, '2025-01-06', 'P'),
(16, 16, 206, '2025-01-06', 'A'),
(17, 17, 207, '2025-01-07', 'L'),
(18, 18, 208, '2025-01-07', 'P'),
(19, 19, 209, '2025-01-07', 'A'),
(20, 20, 210, '2025-01-08', 'P')

select * from sarthak.attendance


--3. Academic Performance
create table sarthak.academic_performance(
 performanceid INT primary key,
 Studentid INT,
 courseid INT,
 term varchar(15),
 grade varchar(3),
 marks_obtained Decimal(5,2),
 total_marks Decimal(5,2),
 FOREIGN KEY (Studentid) REFERENCES  sarthak.students (Studentid),
 FOREIGN KEY (courseid) REFERENCES sarthak.courses (courseid)
)

INSERT INTO sarthak.academic_performance (performanceid, Studentid, courseid, term, grade, marks_obtained, total_marks) 
VALUES
(1, 1, 201, 'Spring 2024', 'A', 90.0, 100.0),
(2, 2, 202, 'Spring 2024', 'B', 75.0, 100.0),
(3, 3, 203, 'Spring 2024', 'C', 65.0, 100.0),
(4, 4, 204, 'Spring 2024', 'A', 88.0, 100.0),
(5, 5, 205, 'Spring 2024', 'B', 80.0, 100.0),
(6, 6, 206, 'Spring 2024', 'A', 95.0, 100.0),
(7, 7, 207, 'Spring 2024', 'B', 82.0, 100.0),
(8, 8, 208, 'Spring 2024', 'A', 91.0, 100.0),
(9, 9, 209, 'Spring 2024', 'B', 78.0, 100.0),
(10, 10, 210, 'Spring 2024', 'C', 67.0, 100.0),
(11, 11, 201, 'Spring 2024', 'B', 85.0, 100.0),
(12, 12, 202, 'Spring 2024', 'A', 92.0, 100.0),
(13, 13, 203, 'Spring 2024', 'C', 70.0, 100.0),
(14, 14, 204, 'Spring 2024', 'B', 76.0, 100.0),
(15, 15, 205, 'Spring 2024', 'A', 89.0, 100.0),
(16, 16, 206, 'Spring 2024', 'C', 65.0, 100.0),
(17, 17, 207, 'Spring 2024', 'A', 93.0, 100.0),
(18, 18, 208, 'Spring 2024', 'B', 79.0, 100.0),
(19, 19, 209, 'Spring 2024', 'C', 67.0, 100.0),
(20, 20, 210, 'Spring 2024', 'A', 94.0, 100.0)

select * from sarthak.academic_performance


--4. Fee Tracking
create table sarthak.fee_records(
 feeid INT primary key,
 Studentid INT,
 feetype varchar(50),
 amount Decimal(10,2),
 due_date DATE ,
 payment_date DATE,
 status varchar(1),
 FOREIGN KEY (Studentid) REFERENCES sarthak.students (Studentid)
)

INSERT INTO sarthak.fee_records (feeid, Studentid, feetype, amount, due_date, payment_date, status) 
VALUES
(1, 1, 'Tuition', 2000.00, '2025-01-15', '2025-01-10', 'P'),
(2, 2, 'Hostel', 1000.00, '2025-01-20', NULL, 'U'),
(3, 3, 'Library', 300.00, '2025-01-25', '2025-01-22', 'P'),
(4, 4, 'Tuition', 2000.00, '2025-02-01', NULL, 'U'),
(5, 5, 'Lab', 500.00, '2025-01-30', '2025-01-28', 'P'),
(6, 6, 'Sports', 200.00, '2025-02-05', '2025-01-30', 'P'),
(7, 7, 'Tuition', 2000.00, '2025-01-15', NULL, 'U'),
(8, 8, 'Library', 300.00, '2025-01-10', '2025-01-07', 'P'),
(9, 9, 'Hostel', 1000.00, '2025-01-20', NULL, 'U'),
(10, 10, 'Lab', 500.00, '2025-02-01', '2025-01-25', 'P'),
(11, 11, 'Tuition', 2000.00, '2025-01-20', '2025-01-15', 'P'),
(12, 12, 'Sports', 200.00, '2025-02-10', NULL, 'U'),
(13, 13, 'Library', 300.00, '2025-01-28', '2025-01-25', 'P'),
(14, 14, 'Tuition', 2000.00, '2025-02-01', NULL, 'U'),
(15, 15, 'Lab', 500.00, '2025-01-30', '2025-01-29', 'P'),
(16, 16, 'Sports', 200.00, '2025-02-15', NULL, 'U'),
(17, 17, 'Hostel', 1000.00, '2025-01-20', NULL, 'U'),
(18, 18, 'Tuition', 2000.00, '2025-02-05', '2025-02-01', 'P'),
(19, 19, 'Library', 300.00, '2025-02-01', NULL, 'U'),
(20, 20, 'Lab', 500.00, '2025-02-01', '2025-01-31', 'P');

select * from sarthak.fee_records


--5.Course Management
create table sarthak.courses(
 courseid INT primary key,
 coursename varchar(100),
 description TEXT,
 credits INT,
 department varchar(50)
)



INSERT INTO sarthak.courses (courseid, coursename, description, credits, department) 
VALUES
(201, 'Physics 101', 'Introduction to Physics', 4, 'Science'),
(202, 'Chemistry 101', 'Introduction to Chemistry', 4, 'Science'),
(203, 'Biology 101', 'Introduction to Biology', 4, 'Life Sciences'),
(204, 'History 101', 'World History Overview', 3, 'Arts'),
(205, 'Mathematics 101', 'Basic Calculus', 4, 'Mathematics'),
(206, 'Computer Science 101', 'Introduction to Programming', 4, 'Engineering'),
(207, 'English 101', 'Basic English Literature', 3, 'Arts'),
(208, 'Geography 101', 'Earth Science and Geography', 3, 'Science'),
(209, 'Economics 101', 'Introduction to Economics', 3, 'Social Sciences'),
(210, 'Psychology 101', 'Fundamentals of Psychology', 3, 'Humanities'),
(211, 'Philosophy 101', 'Introduction to Philosophy', 3, 'Humanities'),
(212, 'Sociology 101', 'Introduction to Sociology', 3, 'Social Sciences'),
(213, 'Political Science 101', 'Introduction to Politics', 3, 'Social Sciences'),
(214, 'Art History 101', 'Art and Culture Overview', 3, 'Arts'),
(215, 'Business 101', 'Fundamentals of Business', 4, 'Business'),
(216, 'Management 101', 'Introduction to Management', 4, 'Business'),
(217, 'Marketing 101', 'Introduction to Marketing', 3, 'Business'),
(218, 'Finance 101', 'Basic Financial Principles', 3, 'Business'),
(219, 'Accounting 101', 'Fundamentals of Accounting', 4, 'Business'),
(220, 'Statistics 101', 'Intro to Statistics', 3, 'Mathematics')

select * from sarthak.courses


--6. Data Security and Access Control

create table sarthak.user_roles(
 roleid INT primary key,
 rolename varchar(50),
 permissions TEXT
)



INSERT INTO sarthak.user_roles (roleid, rolename, permissions) 
VALUES 
(1, 'Admin', '{"read":true,"write":true,"delete":true}'),
(2, 'Student', '{"read":true,"write":false,"delete":false}'),
(3, 'Faculty', '{"read":true,"write":true,"delete":false}');

select * from sarthak.user_roles

create table sarthak.user_accounts(
 userid int primary key,
 username varchar(50),
 password_hash varchar(255),
 roleid INT,
 last_login TIMESTAMP,
 FOREIGN KEY (roleid) REFERENCES sarthak.user_roles (roleid)
)

INSERT INTO sarthak.user_accounts (userid, username, password_hash, roleid, last_login) 
VALUES
(1, 'admin', 'hashed_admin_password', 1, '2025-01-09 10:00:00'),
(2, 'student1', 'hashed_student1_password', 2, '2025-01-09 11:00:00'),
(3, 'faculty1', 'hashed_faculty1_password', 3, '2025-01-08 08:30:00'),
(4, 'student2', 'hashed_student2_password', 2, '2025-01-09 12:00:00'),
(5, 'student3', 'hashed_student3_password', 2, '2025-01-09 01:00:00'),
(6, 'faculty2', 'hashed_faculty2_password', 3, '2025-01-10 09:00:00'),
(7, 'student4', 'hashed_student4_password', 2, '2025-01-10 10:00:00'),
(8, 'faculty3', 'hashed_faculty3_password', 3, '2025-01-10 11:00:00'),
(9, 'student5', 'hashed_student5_password', 2, '2025-01-10 12:00:00'),
(10, 'admin2', 'hashed_admin2_password', 1, '2025-01-10 01:00:00'),
(11, 'student6', 'hashed_student6_password', 2, '2025-01-10 02:00:00'),
(12, 'faculty4', 'hashed_faculty4_password', 3, '2025-01-10 03:00:00'),
(13, 'student7', 'hashed_student7_password', 2, '2025-01-10 04:00:00'),
(14, 'faculty5', 'hashed_faculty5_password', 3, '2025-01-10 05:00:00')


select * from sarthak.user_accounts







