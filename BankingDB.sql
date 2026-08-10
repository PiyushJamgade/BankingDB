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

