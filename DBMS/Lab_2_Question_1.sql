create database dblab;
use dblab;
create table Student(
	Rollno varchar(10) not null primary key,
    SName varchar(10) not null,
    City varchar(10) not null
);
create table Course(
	CID varchar(10) not null primary key,
    CName varchar(10) not null,
    Credit int(100) not null
);
describe Student;
describe Course;
/* ---------------------------------I) ANSWER----------------------------------------------- */
insert into Student(Rollno,SName,City)values('CS20B1061','Suresh','Vijayawada');
insert into Student(Rollno,SName,City)values('CS20B1062','Ramesh','Hyderabad');
insert into Student(Rollno,SName,City)values('CS20B1063','Sukesh','Mumbai');
insert into Student(Rollno,SName,City)values('CS20B1064','Michael','Chennai');
insert into Student(Rollno,SName,City)values('CS20B1065','Paul','Vijayawada');
insert into Student(Rollno,SName,City)values('CS20B1066','Kamlesh','Banglore');
insert into Student(Rollno,SName,City)values('CS20B1067','Mode','Banglore');
insert into Student(Rollno,SName,City)values('CS20B1068','Karthik','Kolkata');
insert into Student(Rollno,SName,City)values('CS20B1069','Pramod','Delhi');
insert into Student(Rollno,SName,City)values('CS20B1070','Vinay','Goa');
insert into Course(CID,CName,Credit)values('cs101','DS','4');
insert into Course(CID,CName,Credit)values('cs102','DAA','4');
insert into Course(CID,CName,Credit)values('cs103','OOP','4');
insert into Course(CID,CName,Credit)values('cs104','PSP','3');
insert into Course(CID,CName,Credit)values('cs105','PYTHON','4');
insert into Course(CID,CName,Credit)values('cs106','TOC','4');
insert into Course(CID,CName,Credit)values('ec107','DSD','4');
insert into Course(CID,CName,Credit)values('ec108','COA','3');
insert into Course(CID,CName,Credit)values('me109','DML','3');
insert into Course(CID,CName,Credit)values('msm110','SOD','2');
/* ---------------------------------II) ANSWER----------------------------------------------- */
select* from Student;
select* from Course;
/* ---------------------------------III) ANSWER----------------------------------------------- */
alter table Student add department varchar(10) not null;
alter table Student add marks int(10) not null;
/* ---------------------------------IV) ANSWER----------------------------------------------- */
update Student set marks =100 where Rollno = 'CS20B1061';
update Student set marks =70 where Rollno = 'CS20B1062';
update Student set marks =60 where Rollno = 'CS20B1063';
update Student set marks =75 where Rollno = 'CS20B1064';
update Student set marks =70 where Rollno = 'CS20B1065';
update Student set marks =80 where Rollno = 'CS20B1066';
update Student set marks =70 where Rollno = 'CS20B1067';
update Student set marks =65 where Rollno = 'CS20B1068';
update Student set marks =55 where Rollno = 'CS20B1069';
update Student set marks =70 where Rollno = 'CS20B1070';
update Student set department ='CSE' where Rollno = 'CS20B1061';
update Student set department ='Mechanical' where Rollno = 'CS20B1062';
update Student set department ='CSE' where Rollno = 'CS20B1063';
update Student set department ='CSE' where Rollno = 'CS20B1064';
update Student set department ='Mechanical' where Rollno = 'CS20B1065';
update Student set department ='CSE' where Rollno = 'CS20B1066';
update Student set department ='Mechanical' where Rollno = 'CS20B1067';
update Student set department ='CSE' where Rollno = 'CS20B1068';
update Student set department ='CSE' where Rollno = 'CS20B1069';
update Student set department ='Mechanical' where Rollno = 'CS20B1070';
/* ---------------------------------V) ANSWER----------------------------------------------- */
alter table Course modify column Credit varchar(10);
/* ---------------------------------VI) ANSWER----------------------------------------------- */
alter table Course add course_admission_date date not null;