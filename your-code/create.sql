-- Challenge 1 - Design the Database

/*

Cars: 
id = auto-increment numeric ID (ID int NOT NULL PRIMARY KEY),
vehicle identification number (VIN) = Varchar(255) NOT NULL,
manufacturer = Varchar(255),
model = Varchar(255),
year = year,
color = Varchar(255)

Customers: 
id = auto-increment numeric ID (primary key),
customer_ID = int --> unique NOT NULL,
name = Varchar(255),
phone number = int,
email = Varchar(255),
address = Varchar(255),
city = Varchar(255),
state/province = Varchar(255),
country = Varchar(255),
zip/postal code = int

Salespersons:
id = auto-increment numeric ID (primary key),
staff_ID int --> unique NOT NULL
name = varchar(255),
store = varchar(255)

Invoices:
id = auto-increment numeric ID (primary key)
invoice number = int unique NOT NULL,
date = date,
car = VIN in cars,
customer = customer_ID in Customers
salesperson = staff_ID in Salespersons

*/

-- Challenge 2 - Create the Database and Tables

-- Step 1: Database

CREATE DATABASE IF NOT EXISTS my_sql;
USE my_sql;

DROP TABLE IF EXISTS cars;
CREATE TABLE IF NOT EXISTS cars (
    id INT AUTO_INCREMENT PRIMARY KEY,
    VIN Varchar(255),
    manufacturer Varchar(255),
	model Varchar(255),
	Year year,
	color Varchar(255)
);

DROP TABLE IF EXISTS customers;
CREATE TABLE IF NOT EXISTS customers (
    id INT AUTO_INCREMENT PRIMARY KEY,
	customer_ID int,
	name Varchar(255),
	phone_number varchar(255),
	email Varchar(255),
	address Varchar(255),
	city Varchar(255),
	state_province Varchar(255),
	country Varchar(255),
	zip_code int
);

DROP TABLE IF EXISTS salespersons;
CREATE TABLE IF NOT EXISTS salespersons (
    id INT AUTO_INCREMENT PRIMARY KEY,
	staff_ID int,
	name varchar(255),
	store varchar(255)
);

DROP TABLE IF EXISTS invoices;
CREATE TABLE IF NOT EXISTS invoices (
    id INT AUTO_INCREMENT PRIMARY KEY,
	invoice_number int,
	date date,
	car int,
	customer int,
	salesperson int,
    FOREIGN KEY(car) REFERENCES cars(id),
    FOREIGN KEY(customer) REFERENCES customers(id),
    FOREIGN KEY (salesperson) REFERENCES salespersons(id)
);