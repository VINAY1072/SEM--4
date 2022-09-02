create database db_lab6;
use db_lab6;

create table IIITDM(
	Faculty_name varchar(20),
	Student_Id varchar(20), 
	Building_name varchar(20)
);

create table Faculty(
	Faculty_id varchar(20),
	Faculty_name varchar(20),
	department varchar(20),
	Subject varchar(20),
	primary key (Faculty_id)
);

create table Student(
	Student_Id varchar(20),
	Student_name varchar(20), 
	department varchar(20), 
	course varchar(20), 
	Building_name varchar(20),
	primary key (Student_id)
);

create table Building(
	Building_name varchar(20),
	Room_no int,
	Floor int
);

create table Course(
	department varchar(20), 
	Subject varchar(20), 
	course_id varchar(20)
);

insert into Faculty(Faculty_id,Faculty_name,department,Subject) values
('CS001','Kamlesh','CSE','CProgramming'),
('CS002','Suresh','CSE','Algorithms'),
('CS003','Karthik','CSE','DataStructure'),
('CS004','Joseph','CSE','TOC'),
('CS005','rajesh','CSE','OOPs');

insert into Student(Student_id,Student_name,department,Course,Building_name) values
('cs560','Anup','CSE','Algorithms','Block-B'),
('cs588','Ramesh','CSE','ToC','Block-A'),
('cs989','Paul','CSE','DataStructure','Block-E'),
('cs877','Adam','CSE','CProgramming','Block-D'),
('cs343','Krishna','CSE','Algorithms','Block-C');

insert into Building(Building_name,Room_no,Floor) values
('Block-A',140,4),
('Block-B',110,3),
('Block-C',30,1),
('Block-D',140,2),
('Block-E',30,3);


insert into Course(department,Subject,Course_id) values
('CSE','Algorithms','cs444'),
('CSE','ToC','cs222'),
('CSE','DataStructure','cs333'),
('CSE','CProgramming','cs554'),
('CSE','OOPs','cs666');


/*------------------------------------------------------------------ A -------------------------------------------------------------------------*/
select Student.Student_Id, Course.subject, Faculty.Faculty_name, Building.Room_no
from Student
inner join Course on Course.subject = Student.course
inner join Faculty on Faculty.Subject = Course.subject
inner join Building on Building.Building_name = Student.Building_name
where Building.Room_no = 30;

/*------------------------------------------------------------------ B -------------------------------------------------------------------------*/
select Course.*, Student.Student_name, Building.Building_name, Building.Room_no
from Course
inner join Student on Student.course = Course.subject
inner join Building on Building.Building_name = Student.Building_name
where Building.Room_no = 140;

/*------------------------------------------------------------------ C -------------------------------------------------------------------------*/
select Faculty.*,Student.Student_name as not_teaching_to
from Faculty
inner join Student on not Student.course = Faculty.Subject;

/*------------------------------------------------------------------ D -------------------------------------------------------------------------*/
select Course.subject, Faculty.Faculty_name, Student.Student_name, Building.Floor
from Course
inner join Faculty on Faculty.Subject = Course.subject 
inner join Student on Student.course = Course.subject
inner join Building on Building.Building_name = Student.Building_name
where Building.Floor = 3;