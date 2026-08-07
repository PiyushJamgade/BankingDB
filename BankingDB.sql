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

