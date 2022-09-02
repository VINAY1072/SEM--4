create database db_lab7;
use db_lab7;
create table Bank(
	Bank_name varchar(20) not null,
    State varchar(20) not null
);
create table Account_holder(
	Account_name varchar(20) not null,
    Bank_name varchar(20) not null,
    State_name varchar(20) not null
);
insert into Bank value
('SBI','Andhra Pradesh'),
('SBI','Tamilnadu'),
('SBI','Karnataka'),
('ICICI','Tamilnadu'),
('ICICI','Karnataka');

insert into Account_holder value
('Ramesh','ICICI','Tamilnadu'),
('Dinesh','SBI','Andhra Pradesh'),
('Robert','SBI','Tamilnadu'),
('Robert','ICICI','Karnataka'),
('Robert','SBI','Andhra Pradesh'),
('Karthik','SBI','Andhra Pradesh');

-- select* from Account_holder;
-- select* from Bank;

/*------------------------------------------------------------------------ A -----------------------------------------------------------------------*/
--  Table for All distinct banks (step 1)
CREATE TABLE AllBanks AS
SELECT
    DISTINCT Bank_name
FROM
    Bank;

--  Table for All distinct Account names
CREATE TABLE AllNames AS
SELECT
    DISTINCT Account_name
FROM
    Account_holder;

--  Table(Names_required) for cartesian product of tables 'AllBanks' and 'AllNames'(step 2)
CREATE table Names_required AS
SELECT
    AllBanks.Bank_name,
    AllNames.Account_name
FROM
    AllBanks,
    AllNames;

--  Table(Names_not_required) for all account_names who have not in all banks (step 3)
CREATE table Names_not_required AS
SELECT
    *
FROM
    Names_required
WHERE
    NOT EXISTS (
        Select
            *
        FROM
            Account_holder
        WHERE
            Names_required.Account_name = Account_holder.Account_name
            AND Names_required.Bank_name = Account_holder.Bank_name
    );

--  Table(Not_all_banks) for all distinct account names who have not in all banks  (step 4)
CREATE table Not_all_banks AS
SELECT
    DISTINCT Account_name
FROM
    Names_not_required;

--  Table(Acc_names_All_banks) names not in ;Not_all_banks' table(step 5)
CREATE Table Acc_names_All_banks AS
SELECT
    *
FROM
    AllNames
WHERE
    NOT EXISTS (
        SELECT
            *
        FROM
            Not_all_banks
        WHERE
            Not_all_banks.Account_name = AllNames.Account_name
    );
-- select* from Acc_names_All_banks;
/*---------------------------------------------------------------------------- B -------------------------------------------------------------------*/
--  Table for All distinct Account names(step 1)
CREATE TABLE AllStates AS
SELECT
    DISTINCT State
FROM
    Bank;
--  Table(States_banks_required) for cartesian product of tables 'AllBanks' and 'AllStates'(step 2)
CREATE table States_banks_required AS
SELECT
    AllBanks.Bank_name,
    AllStates.State
FROM
    AllBanks,
    AllStates;

--  Table(States_not_required)(step 3)
CREATE table States_not_required AS
SELECT
    *
FROM
    States_banks_required
WHERE
    NOT EXISTS (
        Select
            *
        FROM
            Bank
        WHERE
            States_banks_required.State = Bank.State
            AND States_banks_required.Bank_name = Bank.Bank_name
    );

--  Table(Not_all_States)(step 4)
CREATE table Not_all_States AS
SELECT
    DISTINCT Bank_name
FROM
    States_not_required;

--  Table(States_All_banks)(step 5)
CREATE Table States_All_banks AS
SELECT
    *
FROM
    AllBanks
WHERE
    NOT EXISTS (
        SELECT
            *
        FROM
            Not_all_States
        WHERE
            Not_all_States.Bank_name = AllBanks.Bank_name
    );
    
-- select* from States_All_banks;
/*---------------------------------------------------------------------------- C -------------------------------------------------------------------*/
CREATE Table States_not_All_banks AS
SELECT
    *
FROM
    AllBanks
WHERE
    NOT EXISTS (
        SELECT
            *
        FROM
            States_All_banks
        WHERE
            States_All_banks.Bank_name = AllBanks.Bank_name
    );
    
-- select* from States_not_All_banks;
/*---------------------------------------------------------------------------- D -------------------------------------------------------------------*/
--  Table(Names_required_2)(step 2)
CREATE table Names_required_2 AS
SELECT
    AllStates.State,
    AllNames.Account_name
FROM
    AllStates,
    AllNames;
--  Table(Names_not_required_2)(step 3)
CREATE table Names_not_required_2 AS
SELECT
    *
FROM
    Names_required_2
WHERE
    NOT EXISTS (
        Select
            *
        FROM
            Account_holder
        WHERE
            Names_required_2.Account_name = Account_holder.Account_name
            AND Names_required_2.State = Account_holder.State_name
    );

--  Table(Not_all_States_2)(step 4)
CREATE table Not_all_States_2 AS
SELECT
    DISTINCT Account_name
FROM
    Names_not_required_2;

--  Table(Acc_names_All_states)(step 5)
CREATE Table Acc_names_All_states AS
SELECT
    *
FROM
    AllNames
WHERE
    NOT EXISTS (
        SELECT
            *
        FROM
            Not_all_States_2
        WHERE
            Not_all_States_2.Account_name = AllNames.Account_name
    );
-- select* from Acc_names_All_states;