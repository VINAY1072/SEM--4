create database dblab1;
use dblab1;

create table Student( RollNo char (8) not null primary key, SName varchar (20) not null, Gender char (1) not null, City varchar(20) not null);
create table Course (CCode char(5) not null primary key, CName varchar(20) not null, Credit smallint not null);
create table Enrolled(RollNo char(8) not null, CCode char(5) not null, YoE int,FOREIGN KEY(Rollno) REFERENCES Student(Rollno),FOREIGN KEY(CCode) REFERENCES Course(CCode));

insert into Student(RollNo,SName,Gender,City)values('1901CS20','Vinay','M','Vijayawada');
insert into Student(RollNo,SName,Gender,City)values('1901CS21','Ascfv','F','Mumbai');
insert into Student(RollNo,SName,Gender,City)values('1901CS22','Bgtrs','M','Banglore');
insert into Student(RollNo,SName,Gender,City)values('1901CS23','Nuytr','F','Chennai');
insert into Student(RollNo,SName,Gender,City)values('1901CS24','Kiuyt','M','Hyderabad');
insert into Student(RollNo,SName,Gender,City)values('1901CS94','rtscfv','F','Delhi');
insert into Student(RollNo,SName,Gender,City)values('1901CS99','Aascfv','M','Mumbai');

insert into Course(CCode,CName,Credit)values('CS101','SDER',4);
insert into Course(CCode,CName,Credit)values('CS102','UYTR',4);
insert into Course(CCode,CName,Credit)values('CS103','KITR',4);
insert into Course(CCode,CName,Credit)values('ME123','MTR',2);
insert into Course(CCode,CName,Credit)values('ME133','HTR',3);
insert into Course(CCode,CName,Credit)values('CS567','rtyER',4);

insert into Enrolled(Rollno,CCode,YoE)values('1901CS20','CS102',2020);
insert into Enrolled(Rollno,CCode,YoE)values('1901CS21','CS102',2019);
insert into Enrolled(Rollno,CCode,YoE)values('1901CS22','CS103',2018);
insert into Enrolled(Rollno,CCode,YoE)values('1901CS23','CS101',2020);
insert into Enrolled(Rollno,CCode,YoE)values('1901CS24','CS101',2019);
insert into Enrolled(Rollno,CCode,YoE)values('1901CS99','CS101',2020);
insert into Enrolled(Rollno,CCode,YoE)values('1901CS99','CS102',2020);
insert into Enrolled(Rollno,CCode,YoE)values('1901CS99','CS103',2020);
insert into Enrolled(Rollno,CCode,YoE)values('1901CS99','ME123',2020);
insert into Enrolled(Rollno,CCode,YoE)values('1901CS99','ME133',2020);
insert into Enrolled(Rollno,CCode,YoE)values('1901CS94','ME133',2020);
insert into Enrolled(Rollno,CCode,YoE)values('1901CS94','ME123',2020);

alter table Course add Ctype varchar(20) not null;
alter table Student add Email varchar(30) unique;
update Course set Ctype='core' where CCode='CS101';
update Course set Ctype='core' where CCode='CS102';
update Course set Ctype='core' where CCode='CS103';
update Course set Ctype='elective' where CCode='ME123';
update Course set Ctype='elective' where CCode='ME133';
update Course set Ctype='core' where CCode='CS567';

update Student set Email='1901CS20@gmail.com' where Rollno='1901CS20';
update Student set Email='1901CS21@gmail.com' where Rollno='1901CS21';
update Student set Email='1901CS22@gmail.com' where Rollno='1901CS22';
update Student set Email='1901CS23@gmail.com' where Rollno='1901CS23';
update Student set Email='1901CS24@gmail.com' where Rollno='1901CS24';
update Student set Email='1901CS94@yahoo.com' where Rollno='1901CS94';
update Student set Email='1901CS99@yahoo.com' where Rollno='1901CS99';

select CName from Course where  CCode like "CS%";

select SName from Student where SName like "%a%a%" and gender='M';

select Student.SName from Student,Enrolled where Student.Rollno =Enrolled.Rollno  and Enrolled.YoE not like 2018 and Enrolled.YoE not like 2019;

select min(Credit) from Course;

select Course.CName from Course,Enrolled where Course.CCode=Enrolled.CCode and Enrolled.YoE not like 2020;

select City,Count(Rollno) from Student group by City;

select RollNo from Enrolled group by RollNo having count(RollNo)=5;

select count(CCode) from Enrolled where Enrolled.Rollno='1901CS99';

select * from Course where CCode like "__5%";

select count(SName) from Student where Rollno like "%CS%";

select RollNo from Enrolled where YoE='2020' group by RollNo having count(RollNo)>4;

select CCode, count(CCode) from Enrolled where RollNo in(select RollNo from Student where City="Delhi" and Gender="F") group by CCode order by count(CCode) desc limit 1;

select Rollno from Student where Email like '%gmail.com%' or Email like '%yahoo.com%';
