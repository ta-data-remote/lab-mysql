CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;


DROP TABLE IF EXISTS Cars;
CREATE TABLE IF NOT EXISTS Cars (
	ID int auto_increment PRIMARY KEY,
    VIN CHAR(17) ,
    Manufacturer VARCHAR(100),
    Model VARCHAR(100),
    Year int(4),
    Color VARCHAR(20)
);


DROP TABLE IF EXISTS Customers;
CREATE TABLE IF NOT EXISTS Customers (
	ID int auto_increment PRIMARY KEY,
    Customer_ID int(5),
    Name VARCHAR(100),
    Phone VARCHAR(20),
    Email VARCHAR(100),
    Address VARCHAR(250),
    City VARCHAR(30),
    State_Province VARCHAR(50),
    Country VARCHAR(50),
    Postal int(5)
);


DROP TABLE IF EXISTS Salespersons;
CREATE TABLE IF NOT EXISTS Salespersons (
	ID int auto_increment PRIMARY KEY,
    Staff_ID int(5),
    Name VARCHAR(100),
    Store VARCHAR(100)
);


DROP TABLE IF EXISTS Invoices;
CREATE TABLE IF NOT EXISTS Invoices (
	ID int auto_increment PRIMARY KEY,
    Invoice_number int(5),
    Date date,
    Car int,
    Customer int,
    Sales_Person int,
	FOREIGN KEY (Car) REFERENCES Cars(ID),
    FOREIGN KEY (Customer) REFERENCES Customers(ID),
    FOREIGN KEY (Sales_Person) REFERENCES Salespersons(ID)
);
select * from Invoices;
