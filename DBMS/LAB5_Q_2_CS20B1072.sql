create database lab5_2;
use lab5_2;
/*-------------------------------------------------------------------------Creating salesman table-----------------------------------------------------------*/
create table salesman(
salesman_id varchar(20) NOT NULL PRIMARY KEY, 
name varchar(20) not null,
city varchar(20) not null,
commission varchar(10) not null
);
/*-------------------------------------------------------------------------Creating Orders table-----------------------------------------------------------*/
create table Orders(
ord_no varchar(10) NOT NULL PRIMARY KEY,
purch_amt int(10) NOT NULL, 
ord_date date not null, 
customer_id varchar(10) NOT NULL, 
salesman_id varchar(20) NOT NULL
);
/*-------------------------------------------------------------------------Inserting values salesman table-----------------------------------------------------------*/
insert into salesman(salesman_id, name ,city ,commission)values('si123@06','Lakshmi','Kolkata','.5');
insert into salesman(salesman_id, name ,city ,commission)values('si123@09','Ganesh','London','.6');
insert into salesman(salesman_id, name ,city ,commission)values('si123@90','Dinesh','London','.3');
insert into salesman(salesman_id, name ,city ,commission)values('si123@10','Joseph','Chennai','.6');
insert into salesman(salesman_id, name ,city ,commission)values('si123@19','Mahesh','Hyderabad','.65');
insert into salesman(salesman_id, name ,city ,commission)values('si123@26','Paul Adam','London','.1');
insert into salesman(salesman_id, name ,city ,commission)values('si123@67','Rahul','Delhi','.4');
/*-------------------------------------------------------------------------Inserting values Orders table-----------------------------------------------------------*/
insert into Orders(ord_no,purch_amt, ord_date, customer_id, salesman_id)values('123',600,'2010-08-20','003cd','si123@19');
insert into Orders(ord_no,purch_amt, ord_date, customer_id, salesman_id)values('576',750,'2018-02-20','004cd','si123@19');
insert into Orders(ord_no,purch_amt, ord_date, customer_id, salesman_id)values('579',800,'2012-05-20','004cd','si123@26');
insert into Orders(ord_no,purch_amt, ord_date, customer_id, salesman_id)values('600',60000,'2021-01-20','006cd','si123@10');
insert into Orders(ord_no,purch_amt, ord_date, customer_id, salesman_id)values('700',745,'2021-01-26','007cd','si123@09');
insert into Orders(ord_no,purch_amt, ord_date, customer_id, salesman_id)values('800',860,'2019-01-29','007cd','si123@26');
/*------------------------------------------------------------------------- A -----------------------------------------------------------*/
select ord_no, purch_amt, ord_date
from Orders
where Salesman_id = (
	select Salesman_id
    from salesman
    where name = 'Paul Adam'
);
/*------------------------------------------------------------------------- B -----------------------------------------------------------*/
select ord_no, purch_amt, ord_date
from Orders
where Salesman_id in (
	select Salesman_id
    from salesman
    where city = 'London'
);
