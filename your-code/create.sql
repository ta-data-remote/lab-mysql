CREATE DATABASE lab_mysql;

USE lab_mysql;

CREATE TABLE cars( 
VIN varchar(255), 
Manufacturer varchar(255), 
Model varchar(50), 
Year smallint,
Color varchar(50));
CREATE TABLE customers(
Customer_ID varchar(255),
Name varchar(100),
Phone_number varchar(100),
Email varchar(255),
Address varchar(255),
City varchar(255),
State varchar(255),
Country varchar(255),
Postal_code varchar(255));
CREATE TABLE salespersons(
Staff_ID varchar(255), -- This is as varchar because I was not sure if this should be only numbers or letters aswell. This way it's the most positive
Name varchar(255),
Store varchar(255));
CREATE TABLE invoices(
Invoice_number smallint,
Date date,
Car varchar(255),
Customer varchar(255),
Salesperson varchar(255));

ALTER TABLE customers
  MODIFY Phone_number varchar(255);
  
ALTER TABLE invoices
MODIFY Invoice_number varchar(255)
