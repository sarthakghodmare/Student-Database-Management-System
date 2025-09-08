--1. Aggregate Functions
--1.Find the total number of students enrolled in each course.
select courseid,count(studentid) AS totalstudent 
from sarthak.attendance 
group by courseid


--2.Find the average marks obtained by students in each course.
select courseid,avg(marks_obtained)
from sarthak.academic_performance
group by courseid


--3.Get the highest fee paid by a student in each fee category (Tuition, Hostel, etc.).
select feetype,max(amount) as highest_paid
from sarthak.fee_records
group by feetype

--4.Find the total fee collected for each fee type (Tuition, Hostel, etc.).
select feetype,sum(amount) as total_fee
from sarthak.fee_records
group by feetype

--5.Find the student who has missed the most classes (based on attendance status).
select studentid,count(attendanceid) as missed_classes
from sarthak.attendance
where status ='A'
group by studentid
order by missed_classes desc

--6.Find the minimum, maximum, and average marks for each student.
select studentid,min(marks_obtained) as min_marks,max(marks_obtained) AS max_marks,avg(marks_obtained) as avg_marks 
from sarthak.academic_performance
group by studentid

--2. Joins
--1.Get the list of students along with their course names.
select s.firstname,s.lastname,c.coursename 
from sarthak.students s
left join sarthak.attendance a
on s.studentid = a.studentid
inner join sarthak.courses c
on c.courseid=a.courseid

--2.Get the student names and the corresponding fee details.
select s.firstname,s.lastname,s.studentid,f.feeid,f.feetype,f.amount,f.payment_date,f.status
from sarthak.students s
left join sarthak.fee_records f
on f.studentid=s.studentid

--3.Get the list of students with their academic performance, including course name and grade.
select s.studentid,s.firstname,s.lastname,ap.term,c.coursename,ap.grade
from sarthak.students s
left join sarthak.academic_performance ap
on s.studentid=ap.studentid
left join sarthak.attendance a 
on a.studentid=s.studentid
left join sarthak.courses c
on a.courseid=c.courseid

--4.List all students who are enrolled in the same course as 'John Doe'.
select  s.firstname,s.lastname,c.coursename
from sarthak.students s
left join sarthak.attendance a
on s.studentid = a.studentid
left join sarthak.courses c
on c.courseid=a.courseid
where s.firstname = 'John' and s.lastname ='Doe'


--5.Get the details of students who have both paid their fees and attended all classes.
select  s.firstname,s.lastname,f.feetype,f.amount,f.status,a.courseid,a.status
from sarthak.students s
inner join sarthak.attendance a
on a.studentid=s.studentid 
inner join sarthak.fee_records f
on f.studentid=s.studentid 
where f.status = 'P' and a.status = 'P'



