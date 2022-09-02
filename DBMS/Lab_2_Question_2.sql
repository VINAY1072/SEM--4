create database IIITDM;
use IIITDM;
create table Student(
	student_id varchar(10) not null primary key,
    first_name varchar(10) not null,
    last_name varchar(10) not null,
    parent_name varchar(10) not null,
    Age int(5) not null
);
create table Faculty(
	Faculty_id varchar(10) not null primary key,
    name varchar(10) not null, 
    Age int(5) not null, 
    department varchar(10) not null, 
    Date_of_joining date
);
create table Building(
	Building_name varchar(10) not null, 
    building_id varchar(10) not null primary key, 
    Capacity_of_student int(5) not null, 
    no_of_floors int(5) not null,
	Date_of_inauguration date
);
/* ------------------------------------------I) Answer --------------------------------------------------------------- */
insert into Student(student_id, first_name, last_name, parent_name, Age)values('CS001','ABC','DEF','RTY',19);
insert into Student(student_id, first_name, last_name, parent_name, Age)values('CS002','ASD','DSE','RHJN',19);
insert into Student(student_id, first_name, last_name, parent_name, Age)values('CS003','AFGV','BGHJN','THJY',18);
insert into Student(student_id, first_name, last_name, parent_name, Age)values('CS004','AGHJ','YUI','RTCD',19);
insert into Student(student_id, first_name, last_name, parent_name, Age)values('CS005','GYUJ','JKLI','RERF',20);
insert into Student(student_id, first_name, last_name, parent_name, Age)values('CS006','JHGT','NMJU','TYUY',18);
insert into Student(student_id, first_name, last_name, parent_name, Age)values('CS007','JHM','VFGHB','GBH',18);
insert into Student(student_id, first_name, last_name, parent_name, Age)values('CS008','JKL','JHKI','RYUIN',19);
insert into Student(student_id, first_name, last_name, parent_name, Age)values('CS009','IOL','HGFR','RTGGF',20);
insert into Student(student_id, first_name, last_name, parent_name, Age)values('CS010','OPI','DJKLM','FRDS',19);
insert into Faculty(Faculty_id, name, Age, department, Date_of_joining)values('fa001','asd',40,'CSE','2015-07-21');
insert into Faculty(Faculty_id, name, Age, department, Date_of_joining)values('fa002','aaf',50,'CSE','2016-08-22');
insert into Faculty(Faculty_id, name, Age, department, Date_of_joining)values('fa003','gf',45,'ECE','2017-11-12');
insert into Faculty(Faculty_id, name, Age, department, Date_of_joining)values('fa004','yui',60,'CSE','2015-10-11');
insert into Faculty(Faculty_id, name, Age, department, Date_of_joining)values('fa005','jkl',30,'ECE','2015-12-04');
insert into Faculty(Faculty_id, name, Age, department, Date_of_joining)values('fa006','bnm',40,'CSE','2018-11-01');
insert into Faculty(Faculty_id, name, Age, department, Date_of_joining)values('fa007','yui',42,'MECH','2019-09-11');
insert into Faculty(Faculty_id, name, Age, department, Date_of_joining)values('fa008','iop',43,'MECH','2017-10-21');
insert into Faculty(Faculty_id, name, Age, department, Date_of_joining)values('fa009','cvb',45,'ECE','2018-11-28');
insert into Faculty(Faculty_id, name, Age, department, Date_of_joining)values('fa010','ytg',49,'CSE','2019-12-29');
insert into Building(Building_name, building_id, Capacity_of_student, no_of_floors,Date_of_inauguration)values('Ashoka','AA001',300,14,'2018-12-22');
insert into Building(Building_name, building_id, Capacity_of_student, no_of_floors,Date_of_inauguration)values('Banyan','AA002',300,14,'2017-12-10');
insert into Building(Building_name, building_id, Capacity_of_student, no_of_floors,Date_of_inauguration)values('Ashwatha','AA003',300,14,'2016-12-12');
insert into Building(Building_name, building_id, Capacity_of_student, no_of_floors,Date_of_inauguration)values('Jasmine','AA004',300,14,'2015-12-15');
insert into Building(Building_name, building_id, Capacity_of_student, no_of_floors,Date_of_inauguration)values('Lotus','AA005',300,14,'2015-12-14');
insert into Building(Building_name, building_id, Capacity_of_student, no_of_floors,Date_of_inauguration)values('Ganga','AA006',300,14,'2016-12-15');
insert into Building(Building_name, building_id, Capacity_of_student, no_of_floors,Date_of_inauguration)values('Krishna','AA007',300,14,'2017-12-28');
insert into Building(Building_name, building_id, Capacity_of_student, no_of_floors,Date_of_inauguration)values('Faculty B','AA008',300,14,'2018-12-02');
insert into Building(Building_name, building_id, Capacity_of_student, no_of_floors,Date_of_inauguration)values('Faculty C','AA009',300,14,'2019-12-22');
insert into Building(Building_name, building_id, Capacity_of_student, no_of_floors,Date_of_inauguration)values('Faculty D','AA010',300,14,'2015-12-21');
/* ------------------------------------------II) Answer --------------------------------------------------------------- */
insert into Faculty(Faculty_id, name, Age, department, Date_of_joining)values('fa011','asfg',40,'CSE','2019-12-21');
insert into Faculty(Faculty_id, name, Age, department, Date_of_joining)values('fa012','aert',50,'CSE','2019-12-21');
insert into Faculty(Faculty_id, name, Age, department, Date_of_joining)values('fa013','gftyh',45,'CSE','2019-12-21');
insert into Faculty(Faculty_id, name, Age, department, Date_of_joining)values('fa014','yutyu',60,'CSE','2019-12-21');
insert into Faculty(Faculty_id, name, Age, department, Date_of_joining)values('fa015','jklgf',30,'CSE','2019-12-21');
insert into Faculty(Faculty_id, name, Age, department, Date_of_joining)values('fa016','bnmrt',40,'CSE','2019-12-21');
insert into Faculty(Faculty_id, name, Age, department, Date_of_joining)values('fa017','yutyi',42,'ECE','2019-12-21');
insert into Faculty(Faculty_id, name, Age, department, Date_of_joining)values('fa018','ioprg',43,'ECE','2019-12-21');
insert into Faculty(Faculty_id, name, Age, department, Date_of_joining)values('fa019','cvbfr',45,'ECE','2019-12-21');
insert into Faculty(Faculty_id, name, Age, department, Date_of_joining)values('fa020','ytgee',49,'ECE','2019-12-21');
insert into Student(student_id, first_name, last_name, parent_name, Age)values('CS011','ATYC','DTYEF','RTYTY',19);
insert into Student(student_id, first_name, last_name, parent_name, Age)values('CS012','ASD','DETYF','GHTY',20);
insert into Student(student_id, first_name, last_name, parent_name, Age)values('CS013','ACFG','TYUF','FAWE',19);
insert into Student(student_id, first_name, last_name, parent_name, Age)values('CS014','GHNB','YUIEF','YUIO',18);
insert into Student(student_id, first_name, last_name, parent_name, Age)values('CS015','GHJU','YUJKF','IOPO',18);
/* ------------------------------------------III) Answer --------------------------------------------------------------- */
update Faculty set department = 'MECH' where Faculty_id = 'fa017';
update Faculty set department = 'MECH' where Faculty_id = 'fa018';
update Faculty set department = 'MECH' where Faculty_id = 'fa019';
update Faculty set department = 'MECH' where Faculty_id = 'fa020';
/* ------------------------------------------IV) Answer --------------------------------------------------------------- */
insert into Faculty(Faculty_id, name, Age, department, Date_of_joining)values('fa021','ag',40,'ECE','2020-03-21');
insert into Faculty(Faculty_id, name, Age, department, Date_of_joining)values('fa022','at',50,'ECE','2020-03-21');
insert into Faculty(Faculty_id, name, Age, department, Date_of_joining)values('fa023','gt',45,'ECE','2020-03-21');
insert into Faculty(Faculty_id, name, Age, department, Date_of_joining)values('fa024','yu',60,'ECE','2020-03-21');
insert into Faculty(Faculty_id, name, Age, department, Date_of_joining)values('fa025','jf',30,'ECE','2020-03-21');
delete from Student where student_id = 'CS003';
delete from Student where student_id = 'CS004';
delete from Student where student_id = 'CS005';
delete from Building where building_id = 'AA003';
/* ------------------------------------------V) Answer --------------------------------------------------------------- */
insert into Student(student_id, first_name, last_name, parent_name, Age)values('CS016','ABggC','DrEF','RTuiY',19);
insert into Student(student_id, first_name, last_name, parent_name, Age)values('CS017','AgwSD','DSeE','RyuN',19);
insert into Student(student_id, first_name, last_name, parent_name, Age)values('CS018','AFnGV','BJN','THdf',18);
insert into Student(student_id, first_name, last_name, parent_name, Age)values('CS019','AGmHJ','YpUI','RsdrD',19);
insert into Student(student_id, first_name, last_name, parent_name, Age)values('CS020','GYjUJ','JKpLI','RertF',20);
insert into Student(student_id, first_name, last_name, parent_name, Age)values('CS021','JHyGT','NMpJU','werY',18);
insert into Student(student_id, first_name, last_name, parent_name, Age)values('CS022','JHcM','VpGHB','rtyh',18);
insert into Student(student_id, first_name, last_name, parent_name, Age)values('CS023','JKxL','JpKI','rfyh',19);
insert into Student(student_id, first_name, last_name, parent_name, Age)values('CS024','IOnL','HlkFR','rhjGF',20);
insert into Student(student_id, first_name, last_name, parent_name, Age)values('CS025','OPsI','DghLM','uioS',19);
/* ------------------------------------ Dropping Date_of_inauguration and adding staff_id -------------------------------------------- */
alter table Building drop column Date_of_inauguration;
alter table Building add staff_id varchar(10) not null;
update Building set staff_id = 'si001' where building_id = 'AA001';
update Building set staff_id = 'si002' where building_id = 'AA002';
update Building set staff_id = 'si003' where building_id = 'AA004';
update Building set staff_id = 'si004' where building_id = 'AA005';
update Building set staff_id = 'si005' where building_id = 'AA006';
update Building set staff_id = 'si006' where building_id = 'AA007';
update Building set staff_id = 'si007' where building_id = 'AA008';
update Building set staff_id = 'si008' where building_id = 'AA009';
update Building set staff_id = 'si009' where building_id = 'AA010';
update Building set staff_id = 'si010' where building_id = 'AA011';
update Building set staff_id = 'si011' where building_id = 'AA012';
update Building set staff_id = 'si012' where building_id = 'AA013';