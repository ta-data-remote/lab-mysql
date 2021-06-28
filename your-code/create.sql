/*
Challenge 1 - Design the Database

*/

DROP DATABASE IF EXISTS CAR_SALES;
CREATE DATABASE IF NOT EXISTS CAR_SALES;
USE CAR_SALES;

DROP TABLE IF EXISTS cars;
CREATE TABLE IF NOT EXISTS cars(
VIN varchar(255),
Manufacturer varchar(255),
Model varchar(255),
Year int,
Color varchar (255),
primary key (VIN)
);


DROP TABLE IF EXISTS Customers;
CREATE TABLE IF NOT EXISTS Customers(
CustomerID int not null primary key,
Customer_Name varchar(255),
Phone varchar (255),
Email varchar(255),
Address varchar (255),
City varchar(255),
State varchar(255),
Country varchar(255),
Postal int
);

DROP TABLE IF EXISTS Salespersons;
CREATE TABLE IF NOT EXISTS Salespersons
(
StaffID int,
Name varchar(220),
Store varchar(220),
primary key (StaffID)
);

DROP TABLE IF EXISTS Invoices;
CREATE TABLE IF NOT EXISTS Invoices
(
Invoice_number int,
invoice_date date,
Car varchar(255),
Customer varchar(255),
Salespersons varchar(255)
);

select * from Customers;
