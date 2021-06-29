/*
Challenge 1 - Design the Database

*/

DROP DATABASE IF EXISTS CAR_SALES;
CREATE DATABASE IF NOT EXISTS CAR_SALES;
USE CAR_SALES;

DROP TABLE IF EXISTS cars;
CREATE TABLE IF NOT EXISTS cars(
ID INT AUTO_INCREMENT, 
VIN varchar(255),
Manufacturer varchar(255),
Model varchar(255),
Year int,
Color varchar (255),
primary key (ID)
);


DROP TABLE IF EXISTS Customers;
CREATE TABLE IF NOT EXISTS Customers(
ID INT AUTO_INCREMENT,
CustomerID int not null,
Customer_Name varchar(255),
Phone varchar (255),
Email varchar(255),
Address varchar (255),
City varchar(255),
State varchar(255),
Country varchar(255),
Postal int,
primary key(ID)
);

DROP TABLE IF EXISTS Salespersons;
CREATE TABLE IF NOT EXISTS Salespersons
(
ID INT AUTO_INCREMENT,
StaffID int,
Name varchar(220),
Store varchar(220),
primary key (ID)
);

DROP TABLE IF EXISTS Invoices;
CREATE TABLE IF NOT EXISTS Invoices
(
ID INT AUTO_INCREMENT,
Invoice_number int,
invoice_date date,
Car INT,
Customer varchar(255),
Salespersons varchar(255),
primary key (ID),
foreign key (Car) references cars(ID)
);

select * from Customers;
