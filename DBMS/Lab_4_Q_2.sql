create database lab42;

use lab42;

create table Employees(Employee_id int not null primary key,First_name varchar(20) not null,Last_name varchar(20) not null,Salary double not null,Joining_date date not null,Departement varchar(20) not null);

INSERT INTO EMPLOYEES VALUES(1, "BOBY", "RATHOD", 1000000, '2020-12-20', "FINANCE");

INSERT INTO EMPLOYEES VALUES(2, "JASMIN", "JOSE", 6000000, '2015-02-07', "IT");
INSERT INTO EMPLOYEES VALUES(3, "PRATAP", "MATHEW", 8900000, '2014-03-09', "BANKING");
INSERT INTO EMPLOYEES VALUES(4, "JOHN", "MICHEAL", 2000000, '1999-03-17', "INSURANCE");
INSERT INTO EMPLOYEES VALUES(5, "ALEX", "KINTO", 2200000, '1987-02-25', "FINANCE");
INSERT INTO EMPLOYEES VALUES(6, "JASWANTH", "KUMAR", 1230000, '2021-07-23', "IT");
SELECT * FROM EMPLOYEES;
/*----------------------------------------------------------------------------- A -------------------------------------------------------------------------*/
SELECT * FROM EMPLOYEES WHERE SALARY BETWEEN 2000000 AND 5000000;
/*----------------------------------------------------------------------------- B -------------------------------------------------------------------------*/
SELECT LAST_NAME, YEAR(CURDATE()) - YEAR(JOINING_DATE) AS WORK_EXPERIENCE FROM EMPLOYEES WHERE (FLOOR(DATEDIFF(CURRENT_DATE, JOINING_DATE)/365.25))>3 AND FIRST_NAME LIKE '%A%';
/*----------------------------------------------------------------------------- C -------------------------------------------------------------------------*/
SELECT JOINING_DATE FROM EMPLOYEES WHERE DEPARTEMENT = "IT" AND SALARY > 3555000;
/*----------------------------------------------------------------------------- D -------------------------------------------------------------------------*/
SELECT EMPLOYEE_ID,FIRST_NAME,LAST_NAME,SALARY,JOINING_DATE FROM EMPLOYEES WHERE DEPARTEMENT = "FINANCE" AND SALARY < 3615000;
