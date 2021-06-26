-- Challenge 1 - Design the Database & Challenge 2 - Create the Database and Tables

-- Creating a database and use it
CREATE DATABASE IF NOT EXISTS cars_dealership;

USE cars_dealership;

-- Creating table `Cars` - with following variables -> ID	VIN	Manufacturer	Model	Year	Color 

DROP TABLE IF EXISTS Cars;
CREATE TABLE IF NOT EXISTS Cars
(ID INT AUTO_INCREMENT PRIMARY KEY,
VIN VARCHAR(255),
Manufacturer VARCHAR(100),
Model VARCHAR(100),
Year INT,
Color VARCHAR(50));

-- Check the table 
SELECT * FROM Cars;

-- Creating table `Customers` - with following variables -> ID	Customer ID	Name	Phone	Email	Address	City	State/Province	Country	Postal

DROP TABLE IF EXISTS Customers;
CREATE TABLE IF NOT EXISTS Customers
(ID INT AUTO_INCREMENT PRIMARY KEY,
`Customer ID` INT,
`Name` VARCHAR(50),
Phone VARCHAR(50),
Email VARCHAR(255),
Address VARCHAR(50),
City VARCHAR(50),
`State/Province` VARCHAR(50),
Country VARCHAR(50),
Postal INT);


-- Check the table
SELECT * FROM Customers;

-- Creating table `Salespersons` - with following variables -> ID	Staff ID	Name	Store

DROP TABLE IF EXISTS Salespersons;
CREATE TABLE IF NOT EXISTS Salespersons
(ID INT AUTO_INCREMENT PRIMARY KEY,
`Staff ID` VARCHAR(5),
`Name` VARCHAR(50),
Store VARCHAR(50));

-- Check the table
SELECT * FROM Salespersons;

-- Creating table 'Invoices' - with following variables -> ID	Invoice Number	Date	Car	Customer	Sales Person

DROP TABLE IF EXISTS Invoices;
CREATE TABLE IF NOT EXISTS Invoices
(ID INT AUTO_INCREMENT PRIMARY KEY,
`Invoice Number` INT,
`Date` VARCHAR(10),
Car INT,
Customer INT,
`Sales Person` INT,
FOREIGN KEY(car) REFERENCES Cars(ID),
FOREIGN KEY(`Sales Person`) REFERENCES Salespersons(ID),
FOREIGN KEY(Customer) REFERENCES Customers(ID));

-- Check the table
SELECT * FROM Invoices;






