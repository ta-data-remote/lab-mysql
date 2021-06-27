/*
Challenge 1 - Design the Database
Using pen and paper, design a database to meet the minimal requirements of your boss. The minimal information to be recorded is described below:

Cars - e.g. the vehicle identification number (VIN), manufacturer, model, year, and color of the cars in your company's inventory.

Customers - e.g. the customer ID, name, phone number, email, address, city, state/province, country, and zip/postal code of the customers.

Salespersons - e.g. staff ID, name, and the store at your company.

Invoices - e.g. the invoice number, date, car, customer, and salesperson related to each car sale.

Before solving this challenge, review your lesson about database structure and design then ask yourself:

What entities and attributes should be included in the database?
For each attribute, choose the data type that is most suitable
Note that in MySQL typically each entity table should have an auto-increment numeric ID. The auto-increment ID is different from the customer ID or staff ID.
Also note that some attributes are required while other ones can be blank.
*/

-- The Database should contain 4 tables

/*
Structure:

Table 1: Cars
	Columns: VIN, Manufacturer, Model, Year, Color
Table 2: Customers
	Columns: Customer ID, Name, Phone Number, Email, Adress, City, State/Province, Country, Postal Code
Table 3: Salesperson
	Columns: Staff ID, Name, Store
Table 4: Invoice
	Columns: Invoice Number, Date, Car, Customer, Salesperson	 
*/

/* 
Data Type:

Table 1: Cars
	Data Type: INT(), VARCHAR(20), VARCHAR(20), DATE, VARCHAR(20)
Table 2: Customers
	Data Type: INT(), VARCAHR(20), INT(), VARCHAR(20), VARCHAR(20), VARCHAR(20), VARCHAR(20), VARCHAR(20), INT()
Table 3: Salesperson
	Data Type: INT(), VARCAHR(20), VARCHAR(20)
Table 4: Invoice
	Data Type: INT(), DATETIME, INT(), INT(), INT()
*/


-- Challenge 2!
-- Creating the different Tables

CREATE DATABASE lab_mysql;    
USE lab_mysql;


-- Cars Table:
DROP TABLE IF EXISTS Cars;
CREATE TABLE IF NOT EXISTS Cars (
	ID INT AUTO_INCREMENT,
    VIN VARCHAR(255),
    Manufacturer VARCHAR(255),
    Model VARCHAR(255),
	`Year` YEAR,
    Color VARCHAR(255),
    PRIMARY KEY (ID));


select * from cars;
    
-- Customer Table:
DROP TABLE IF EXISTS Customers;
CREATE TABLE IF NOT EXISTS Customers (
	ID INT AUTO_INCREMENT,
    `Customer ID` INT,
    `Name` VARCHAR(255),
    `Phone Number` BIGINT,
    `Email` VARCHAR(255),
    `Adress` VARCHAR(255),
    `City` VARCHAR(255),
    `State/Province` VARCHAR(255),
    `Country` VARCHAR(255),
    `Postal Code` INT,
	PRIMARY KEY (ID));
    
    
 SELECT * FROM Customers;   
    
-- Salesperson Table:
DROP TABLE IF EXISTS Salesperson;
CREATE TABLE IF NOT EXISTS Salesperson (
	ID INT AUTO_INCREMENT,
    `Staff ID` INT,
    `Name` VARCHAR(20),
    `Store` VARCHAR(20),	
    PRIMARY KEY (ID));

-- Invoice Table:
DROP TABLE IF EXISTS Invoice;
CREATE TABLE IF NOT EXISTS Invoice (
	ID INT AUTO_INCREMENT,
    `Invoice Number` BIGINT,
    `Date` DATE,
    `Car` INT,
	`Customer` INT,
    `Sales Person` INT,
    PRIMARY KEY (ID),
    FOREIGN KEY (`Car`) REFERENCES Cars(ID),
    FOREIGN KEY (`Customer`) REFERENCES Customers(ID),
    FOREIGN KEY (`Sales Person`) REFERENCES Salesperson(ID));
    
    
-- Challenge 3!
-- Seeding the Tables

-- Seeding Table Cars:

INSERT INTO Cars (VIN, Manufacturer, Model, `Year`, Color)  VALUES 
('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan',	2019, 'Blue'),
('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter',	2019, 'Red'),
('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion',	2018, 'White'),
('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4',	2018, 'Silver'),
('DAM41UDN3CHU2WVF6', 'Volvo', 'V60',	2019, 'Gray'),
('DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', 2019, 'Gray');

select * from Cars;

-- Seeding Customers Tabe:

INSERT INTO Customers (`Customer ID`, `Name`, `Phone Number`, `Email`, `Adress`, `City`, `State/Province`, `Country`, `Postal Code`) VALUES
(10001, 'Pablo Picasso', 34636176382, '-' , 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', 28045),
(20001, 'Abraham Lincoln', 13059077086, '-' , '120 SW 8th St', 'Miami', 'Florida', 'United States', 33130),
(30001, 'Napoléon Bonaparte', 33179754000, '-' , '40 Rue du Colisée', 'Île-de-France', 'Paris','France', 75008);

-- Seeding Sales Person Table
INSERT INTO Salesperson (`Staff ID`, `Name`, `Store`) VALUES
(00001,	'Petey Cruiser', 'Madrid'),
(00002,	'Anna Sthesia', 'Barcelona'),
(00003,	'Paul Molive', 'Berlin'),
(00004,	'Gail Forcewind', 'Paris'),
(00005,	'Paige Turner',	'Mimia'),
(00006,	'Bob Frapples',	'Mexico City'),
(00007,	'Walter Melon',	'Amsterdam'),
(00008,	'Shonda Leer', 'São Paulo');

-- Seeding Table Invoice

INSERT INTO Invoice (`Invoice Number`, `Date`, `Car`, `Customer`, `Sales Person`) VALUES
(852399038,	'2018-08-22',	1,	1,	3),
(731166526,	'2018-12-31',	3,	3,	5),
(271135104,	'2019-01-22',	2,	2,	7);