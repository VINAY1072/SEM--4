create database LAB4;
use LAB4;
create table STUDENTACCOUNT(id int not null primary key,Person_name varchar(20) not null,Department varchar(5) not null, Birth date not null);

insert into STUDENTACCOUNT(id,Person_name,Department,Birth)values(1,'Ramesh','CS','2001-01-12');
insert into STUDENTACCOUNT(id,Person_name,Department,Birth)values(2,'suresh','IT','2020-02-20');
insert into STUDENTACCOUNT(id,Person_name,Department,Birth)values(3,'Jomin','CS','1996-02-29');
insert into STUDENTACCOUNT(id,Person_name,Department,Birth)values(4,'Shree','IT','2012-12-18');
insert into STUDENTACCOUNT(id,Person_name,Department,Birth)values(5,'Hemanth','CS','2022-02-07');
/*----------------------------------------------------------------------------- A -------------------------------------------------------------------------*/
select id,Person_name, Department, concat (floor((timestampdiff(month, birth, curdate()) / 12)), ' Years ', mod(timestampdiff(month,birth, curdate()), 12) , ' months ') as Age from STUDENTACCOUNT where Department='CS';
/*----------------------------------------------------------------------------- B -------------------------------------------------------------------------*/
SELECT * FROM studentaccount WHERE person_name LIKE '%S%';
/*----------------------------------------------------------------------------- C -------------------------------------------------------------------------*/
SELECT * FROM studentaccount WHERE length(person_name) = 5;
/*----------------------------------------------------------------------------- D -------------------------------------------------------------------------*/
SELECT * FROM STUDENTACCOUNT where mod(id,2)=1;
SELECT * FROM STUDENTACCOUNT where not mod(id,2)=1;
