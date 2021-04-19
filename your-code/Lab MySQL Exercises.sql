CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

DROP TABLE IF EXISTS cars;
CREATE TABLE IF NOT EXISTS cars (
    ID INT AUTO_INCREMENT,
    VIN VARCHAR(17),
    Manufacturer VARCHAR(15),
    Model VARCHAR(20),
    Year YEAR,
    Color VARCHAR(15),
    PRIMARY KEY(ID)
    );

INSERT INTO cars (VIN, Manufacturer, Model, Year, Color) VALUES 
('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'),
('DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', 2019, 'Gray');

DROP TABLE IF EXISTS customers;
CREATE TABLE IF NOT EXISTS customers (
    ID INT AUTO_INCREMENT,
    `Customer ID` INT,     -- Customer ID
    Name VARCHAR(30),
    Phone VARCHAR(20),
    Email VARCHAR(30),
    Address VARCHAR(30),
    City VARCHAR(30),
    `State Province` VARCHAR(30),   -- State/Province
    Country VARCHAR(30),
    Postal VARCHAR(30),
    PRIMARY KEY (ID)
    );

INSERT INTO customers (`Customer ID`, Name, Phone, Email, Address, City, `State Province`, Country, Postal) VALUES 
(10001, 'Pablo Picasso', '+34 636 17 63 82', '-', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', 28045),
(20001, 'Abraham Lincoln', '+1 305 907 7086', '-', '120 SW 8th St', 'Miami', 'Florida', 'United States', 33130),
(30001, 'Napoléon Bonaparte', '+33 1 79 75 40 00', '-', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', 75008);

DROP TABLE IF EXISTS salespersons;
CREATE TABLE IF NOT EXISTS salespersons (
    ID INT AUTO_INCREMENT,
    `Staff ID` INT(5),         -- Staff ID
    Name VARCHAR(30),
    Store VARCHAR(20),
    PRIMARY KEY (ID)
    );

INSERT INTO salespersons (`Staff ID`, Name, Store) VALUES 
(00001, 'Petey Cruiser', 'Madrid'),
(00002, 'Anna Sthesia', 'Barcelona'),
(00003, 'Paul Molive', 'Berlin'),
(00004, 'Gail Forcewind', 'Paris'),
(00005, 'Paige Turner', 'Mimia'),
(00006, 'Bob Frapples', 'Mexico City'),
(00007, 'Walter Melon', 'Amsterdam'),
(00008, 'Shonda Leer', 'São Paulo');

DROP TABLE IF EXISTS invoices;
CREATE TABLE IF NOT EXISTS invoices (
    ID INT AUTO_INCREMENT,
    `Invoice Number` INT,      -- Invoice Number
    Date DATE,
    Car INT,
    Customer INT,
    `Sales Person` INT,
    PRIMARY KEY(ID), 
    FOREIGN KEY(Car) REFERENCES cars(ID),
    FOREIGN KEY(Customer) REFERENCES customers(ID),
    FOREIGN KEY(`Sales Person`) REFERENCES salespersons(ID)
	);

INSERT INTO invoices (`Invoice Number`, Date, Car, Customer, `Sales Person`) VALUES 
(852399038, '2018-08-22', 4, 1, 3),
(731166526, '2018-12-31', 3, 3, 5),
(271135104, '2019-01-22', 2, 2, 7);

UPDATE salespersons
SET store = "Miami"
WHERE id = 5;

UPDATE customers
SET email = 'ppicasso@gmail.com' WHERE ID = 1;

UPDATE customers
SET email = 'lincoln@us.gov' WHERE ID = 2;

UPDATE customers
SET email = 'hello@napoleon.me' WHERE ID = 3;

DELETE FROM cars
WHERE id=5;