# Creat Database

#DDL,DML,DQL,DCL,TCL

create database BankingDB;

#Run query 

#use database
use bankingdb;

#Create a Table
create table customers(
customer int,
First_name varchar(200),
last_name varchar(200),
email varchar(20),
phone bigint
);

#DQL
select * from customers;

Alter table Customers add column Location Varchar(20);

select * from customers;

alter table customers add location varchar(20), add Pincode int;

alter table customers drop columnlocation, drop column pincode;

alter table customers add column AccountCreationDate date;


use bankingdb;

create table Accounts (
AccountID int,
Account_type varchar(20),
Balance decimal(10,2)
);

select * from Accounts;

create table Transactions (
TransactionID int,
Transaction_Date Date,
Amount decimal(10,2),
Transaction_type varchar(20)
);

create table Branches (
BranchID int,
Branch_Name varchar(20),
BranchAddress varchar(20),
BranchPhone varchar(20)
);

create table Account_Branches (
AssigmentDate date
);

create table Loans (
LoanID int,
LoanAmount decimal(10,2),
InterestDate decimal(10,2),
StartDate date,
EndDate date);

alter table Loans rename column InterestDate to InterestRate;

alter table customers add column DOB date;

drop table account_branches;

select * from customers;

use bankingdb;

Alter table Accounts modify AccountID int primary key;

Alter table Transactions modify TransactionID int primary key;

Alter table loans modify LoanID int primary key;

Alter table customers modify customer int primary key;

Alter table branches modify BranchID int primary key;

alter table customers rename column customer to customer_id;

insert into customers (customer, First_Name, Last_Name, Email, Phone, location, accountcreationdate) values 
(101,"Piyush","Jamgade","pi@gmail.com",7796255142,"Nagpur","2026-08-11"),
(103,"Dev","Mishra","dev@gmail.com",5566447788,"mumbai","2025-09-02");




select * from customers;

insert into customers (customer_id, First_Name, Last_Name, Email, Phone, location, accountcreationdate) values 
(101,"Piyush","Jamgade","pi@gmail.com",7796255142,"Nagpur","2026-08-11"),
(102,"Dev","Mishra","dev@gmail.com",5566447788,"mumbai","2025-09-02"),
(103,"OM","Bhure","omi@gmail.com",8788628432,"Hingna","2024-12-22"),
(104,"It","Vedant","itvedant@gmail.com",765432190,"Pune","2025-08-30"),
(105,"Arjit","Singh","arjit@gmail.com",765432190,"Kerela","2025-10-19");

truncate table customers;

insert into customers (customer_id, First_Name, Last_Name, Email, Phone, location, accountcreationdate) values 
(101,"Piyush","Jamgade","pi@gmail.com",7796255142,"Nagpur","2026-08-11"),
(102,"Dev","Mishra","dev@gmail.com",5566447788,"mumbai","2025-09-02"),
(103,"OM","Bhure","omi@gmail.com",8788628432,"Hingna","2024-12-22"),
(104,"It","Vedant","itvedant@gmail.com",765432190,"Pune","2025-08-30"),
(105,"Arjit","Singh","arjit@gmail.com",765432190,"Kerela","2025-10-19");

select * from customers;

insert into Accounts (AccountID, Account_type, Balance, Customer_id) values 
(110,"Current","100000","1012"),
(111,"Saving","120000","1013"),
(112,"Business","150000","1014"),
(113,"Business","200000","1015");

#off the safe mode(off=0, on=1)
set sql_safe_updates=0;

#clause -where (condition wise)
update customers set Last_Name = "Saxsena" where customer= 102;

#multiples updates(Case)

update customers set phone =Case 
when customer =101 then 878862
when customer =102 then 123456
end
where customer in (101,102);

select * from customers;


select * from accounts;
alter table accounts add Customer_id int unique not null;

insert into Accounts (AccountID, Account_type, Balance, Customer_id) value
(13,"Current","20000",1011);

select * from customers;
update Accounts set Balance = 20000 where AccountID= 13;


#delete query
Delete from Customers where customer = 101;

select * from Customers
where Location is not null;

select * from Accounts
where Account_type = "saving";

select * from Accounts
where Balance >= 150000;

select * from Accounts
where Balance between  10000 and 150000;

select * from  customers
where phone in ("123456");


select * from  customers
Where first_name like "d%";

select * from  customers
order by first_name;

select * from  Accounts
order by balance desc;

select * from  Accounts
order by balance desc limit 2 offset 3;

#Aggregation functionn (min,max,avg,count)

select avg(balance) from accounts;

select * from customers
where first_name like "a%";

select * from customers
where email like "%gmail%";

select * from customers
where last_name like "%a";

select * from customers
where customer in (102);


select * from customers
order by last_name;

select * from accounts
order by balance desc limit 2 offset 3;

#upper case
select *, upper(first_name) from customers;

#lower case
select *, lower(first_name) as lower from customers;

#length case
select *, length(first_name) from customers;

#length case
select *, left(first_name,3) from customers;

#Trim
select *, trim(first_name) from customers;

#Concat  is used to combine multple columns
select *, concat(first_name, last_name) from customers;

#Concat_ws   is used to add space
select *, concat_ws("  ",first_name, last_name) as name from customers;

#left  is used to extract letter from column 
select *, left(first_name, 2) from customers;

#Right  
select *, Right(first_name, 2) from customers;

#Mid
select *, mid(first_name, 3,2) from customers;

#Sub_String
select *, substring(first_name, 3,2) from customers;

#Replace
select *, replace(first_name,"Dev","Piyu") from customers;

select *, date_format(AccountCreationDate,"%D-%M-%Y") as Tarik from customers;

select *, date_format(AccountCreationDate,"%y") as Tarik from customers;

select Customer_id , year(D_O_B) as birthyear from customers;

Alter table Customers add column D_O_B Varchar(20);

set sql_safe_updates=0;                                            

update customers set D_O_B=Case 
when customer_id =101 then "2004-10-19"
when customer_id =102 then "2003-02-12"
when customer_id =103 then "2007-11-01"
when customer_id =104 then "2010-05-29"
when customer_id =105 then "2012-09-15"
end
where customer_id in (101,102,103,104,105);



select sum(Balance) from Accounts;

select AVg(Balance) as Avg from Accounts;

select Max(Balance) as max from Accounts;
select Min(Balance) as min from Accounts;

select Count(Customer_id) as min from Accounts;

select * from customers;

SELECT Customer_id, YEAR(D_O_B) AS BirthYear FROM customers;  ###########

select *, date_format (D_O_B,"%D-%M-%Y") as Tarik from Customers;

SELECT Customer_id, Month(D_O_B) AS BirthMonth FROM customers;


#DateDifference between the two dates
SELECT Customer_ID,
DATEDIFF(CURDATE(),D_O_B) AS Days FROM customers;

SELECT First_Name, D_O_B, IF(YEAR(D_O_B) <= 2007,'Adult','Young') AS Category FROM Customers;

SELECT First_Name, IFNULL(Phone, 'Not Available') AS PhoneNumber FROM Customers;

#date_add interval 
Select *, date_add(D_O_B,interval 5 day) from customers;

Select account_type, sum(balance) from accounts
group by account_type;

Select account_type, sum(balance) from accounts
group by account_type
having  sum(balance) > 30000;
