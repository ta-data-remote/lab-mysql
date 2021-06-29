#Challenge 2 - Create the Database and Tables

CREATE DATABASE lab_mysql;

USE lab_mysql;


SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";



CREATE TABLE Cars (
    ID int NOT NULL AUTO_INCREMENT=0,
    VIN nvarchar(30) NOT NULL,
    Manufacturer varchar(30),
    Model nvarchar(50),
    Year int,
    Color varchar(30),
    PRIMARY KEY (ID)
   
);

CREATE TABLE Customer (
ID int NOT NULL AUTO_INCREMENT,
Customer_ID int NOT NULL,
Name varchar(30),
Phone varchar(30),
Email varchar(30),
Address varchar(30),
City varchar(30),
State_Province varchar(30),
Country varchar(30),
Postal int,
primary key (ID))

CREATE TABLE Staff (
ID int NOT NULL AUTO_INCREMENT,
Staff_ID int NOT NULL,	
Name	varchar(50),
Store varchar(30),
primary key(ID))

CREATE TABLE Invoices (
ID int NOT NULL AUTO_INCREMENT,
Invoice_Number varchar(10),
Invoice_Date date,	
Car	int,
Customer int,	
Sales_Person int,
primary key(ID))








