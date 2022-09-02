create database cs20b1072;
use cs20b1072;

create table Players(
Player_id varchar(10) not null unique primary key,
Player_name varchar(10) not null,
Age int(3) not null,
City varchar(20) not null,
No_of_runs int(10) not null,
No_of_wickets int(10) not null,
No_of_catches int(10) not null,
Match_id varchar(10) not null
);

create table Stadiums(
Stadium_name varchar(20) not null,
location varchar(20) not null,
Capacity int(10) not null
);
create table Matches(
Match_id varchar(20) not null,
Team_name varchar(20) not null,
Location varchar(20) not null
);
insert into Players(Player_id,Player_name,Age,City,No_of_runs,No_of_wickets,No_of_catches,Match_id)values
('P12','vinay',19,'Bangalore',1000,100,50,'M13'),
('P13','praneeth',19,'Bangalore',987,60,40,'M14'),
('P14','naga sai',20,'Chennai',567,95,10,'M15'),
('P15','ravindar',25,'Hyderabad',568,120,30,'M16'),
('P16','soma',26,'Delhi',678,160,60,'M14'),
('P17','vineeth',20,'Kolkata',100,10,70,'M16');

insert into Stadiums(Stadium_name,location,capacity)values
('chepak','chennai',1000),
('chinnaswamy','Bangalore',450),
('Melbourne','Kolkata',1500),
('Gabba','Delhi',400),
('Oaks','Hyderabad',800),
('Heter','Mumbai',600);

insert into Matches(Match_id,Team_name,location)values
('M15','Indiana','chennai'),
('M15','Indiana','Bangalore'),
('M15','Indiana','Kolkata'),
('M15','Indiana','Delhi'),
('M15','Indiana','Hyderabad'),
('M15','Indiana','Mumbai'),
('M13','Tigers','Mumbai'),
('M14','Lions','chennai'),
('M16','RCB','Bangalore'),
('M13','KKR','Kolkata');

/*-------------------------------------------- a ---------------------------------------------*/
select Match_id,No_of_runs,No_of_wickets,No_of_catches
from Players
where players.Match_id in 
(	select Match_id
	from Matches
    where location = 'chennai'
);

/*---------------------------------------- b ------------------------------*/
create table All_loca as
select distinct location,Match_id from Matches;

select distinct Player_id,Player_name
from Players,All_loca
where Players.Match_id = All_loca.Match_id and Players.Age < 25;

/*---------------------------------------- c ------------------------------*/
create table all_loc_1 as 
select distinct location from Stadiums;

select Stadiums.Stadium_name, Stadiums.capacity 
from Stadiums,all_loc_1
where Stadiums.location = all_loc_1.location;

/*------------------------------------ d ---------------------------------------*/
select distinct(Match_id)
from Matches
where (Matches.Team_name like 'In%') and Matches.location in 
(
	select location
    from Stadiums
    where capacity > 500
);