create database lab5;
use lab5;
/*-------------------------------------------------------------------------Creating Orders table-----------------------------------------------------------*/
create table Orders(
ORD_NUM varchar(10) not null primary key, 
ORD_AMOUNT int(10) not null,
ADVANCE_AMOUNT int(10) not null, 
ORD_DATE date not null,
CUST_CODE varchar(10) not null,
AGENT_CODE varchar(10) not null,
ORD_DESCRIPTION varchar(20) not null
);
/*-------------------------------------------------------------------------Creating Agent table-------------------------------------------------------------*/
create table Agent(
AGENT_CODE varchar(10) not null primary key, 
AGENT_NAME varchar(20) not null, 
WORKING_AREA varchar(20) not null,
COMMISSION varchar(10) not null, 
PHONE_NO varchar(10) not null, 
COUNTRY varchar(20) not null
);
/*-------------------------------------------------------------------------Inserting Values Orders table-------------------------------------------------------------*/
insert into Orders(ORD_NUM, ORD_AMOUNT,ADVANCE_AMOUNT, ORD_DATE,CUST_CODE,AGENT_CODE,ORD_DESCRIPTION)values('004',200,3000,'2020-08-15','C004','Ac001','Masala kulcha');
insert into Orders(ORD_NUM, ORD_AMOUNT,ADVANCE_AMOUNT, ORD_DATE,CUST_CODE,AGENT_CODE,ORD_DESCRIPTION)values('007',600,5000,'2020-09-17','C006','Ac003','Biryani');
insert into Orders(ORD_NUM, ORD_AMOUNT,ADVANCE_AMOUNT, ORD_DATE,CUST_CODE,AGENT_CODE,ORD_DESCRIPTION)values('008',700,100,'2019-02-19','C007','Ac005',' ');
insert into Orders(ORD_NUM, ORD_AMOUNT,ADVANCE_AMOUNT, ORD_DATE,CUST_CODE,AGENT_CODE,ORD_DESCRIPTION)values('009',10000,600,'2010-03-21','C009','Ac008','Masala dosa');
insert into Orders(ORD_NUM, ORD_AMOUNT,ADVANCE_AMOUNT, ORD_DATE,CUST_CODE,AGENT_CODE,ORD_DESCRIPTION)values('010',20,600,'2012-04-21','C006','Ac005',' ');
/*-------------------------------------------------------------------------Inserting Values Agent table-------------------------------------------------------------*/
insert into Agent(AGENT_CODE, AGENT_NAME, WORKING_AREA,COMMISSION , PHONE_NO, COUNTRY )values('Ac001','Ramesh','Bangalore','.15','0331234567','India');
insert into Agent(AGENT_CODE, AGENT_NAME, WORKING_AREA,COMMISSION , PHONE_NO, COUNTRY )values('Ac002','Dinesh','Bangalore','.25','0331234568',' ');
insert into Agent(AGENT_CODE, AGENT_NAME, WORKING_AREA,COMMISSION , PHONE_NO, COUNTRY )values('Ac003','Suresh','Mumbai','.35','0331234569','London');
insert into Agent(AGENT_CODE, AGENT_NAME, WORKING_AREA,COMMISSION , PHONE_NO, COUNTRY )values('Ac004','Kamlesh','New jersy','.68','0331234564',' ');
insert into Agent(AGENT_CODE, AGENT_NAME, WORKING_AREA,COMMISSION , PHONE_NO, COUNTRY )values('Ac005','Kartik','Chennai','.73','0331234563','India');
/*------------------------------------------------------------------------- A -------------------------------------------------------------*/
select ORD_NUM, ORD_AMOUNT, ORD_DATE, CUST_CODE, AGENT_CODE 
from Orders 
Where AGENT_CODE in (
	select AGENT_CODE
    from Agent
    where WORKING_AREA = 'Bangalore'
);
/*------------------------------------------------------------------------- B -------------------------------------------------------------*/
select ORD_NUM, ORD_AMOUNT, CUST_CODE, AGENT_CODE 
from Orders
Where AGENT_CODE in (
	select AGENT_CODE
    from Agent
    where AGENT_NAME = 'Ramesh'
);