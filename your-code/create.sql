-- Create Database

CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;


CREATE TABLE IF NOT EXISTS cars (
    id INT auto_increment PRIMARY KEY,
    vin VARCHAR(100),
    manufacturer VARCHAR(100),
    model VARCHAR(30),
    yearr INT,
    color VARCHAR(30)
);

ALTER TABLE cars
MODIFY COLUMN yearr int;

insert into `cars` values
(1, '3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
(2, 'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
(3, 'RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
(4, 'HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
(5, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'),
(6, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', '2019', 'Gray'); 

-- Delete id 5 from table cars
DELETE FROM cars 
WHERE id = 5;


CREATE TABLE IF NOT EXISTS customers (
    id INT PRIMARY KEY,
    cust_id int,
    cust_name VARCHAR(99),
    phone VARCHAR(99),
    email VARCHAR(99),
    address VARCHAR(99),
    city VARCHAR(99),
    state_province VARCHAR(99),
    country VARCHAR(99),
    postal_code int
);
ALTER TABLE customers
MODIFY COLUMN phone VARCHAR(99);

insert into `customers` values
(1, 10001, 'Pablo Picasso', '+34 636 17 63 82', '-', 'Paseo de la Chopera, 14', 'Madrid',	'Madrid', 'Spain', 28045),
(2, 20001, 'Abraham Lincoln', '+1 305 907 7086', '-', '120 SW 8th St', 'Miami', 'Florida', 'United States', 33130),
(3, 30001, 'Napoléon Bonaparte', '+33 1 79 75 40 00', '-',	'40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', 75008);

UPDATE `customers`
SET email = 'ppicasso@gmail.com'
WHERE id = 1;
UPDATE `customers`
SET email = 'lincoln@us.gov'
WHERE id = 2;
UPDATE `customers`
SET email = 'hello@napoleon.me'
WHERE id = 3;


CREATE TABLE IF NOT EXISTS salespersons (
    id INT PRIMARY KEY,
    staff_id INT,
    staff_name VARCHAR(99),
    store VARCHAR(99)
);

insert into `salespersons` values
(1, 00001, 'Petey Cruiser', 'Madrid'),
(2, 00002, 'Anna Sthesia', 'Barcelona'),
(3, 00003, 'Paul Molive', 'Berlin'),
(4,	00004, 'Gail Forcewind', 'Paris'),
(5,	00005, 'Paige Turner', 'Mimia'),
(6,	00006, 'Bob Frapples', 'Mexico City'),
(7,	00007, 'Walter Melon', 'Amsterdam'),
(8,	00008, 'Shonda Leer', 'São Paulo');

UPDATE `salespersons`
SET store = 'Miami'
WHERE id = 5;

CREATE TABLE IF NOT EXISTS invoices (
    id INT PRIMARY KEY,
    invoice_nr INT,
    invoice_date DATE,
    car VARCHAR(99),
    customer VARCHAR(99),
    salesperson VARCHAR(99)
);

ALTER TABLE invoices
MODIFY COLUMN invoice_date VARCHAR(15);
ALTER TABLE invoices
MODIFY COLUMN car int;
ALTER TABLE invoices
MODIFY COLUMN customer int;
ALTER TABLE invoices
MODIFY COLUMN salesperson int;

insert into `invoices` values
(1, 852399038, 22-08-2018, 1, 1, 3),
(2, 731166526, 31-12-2018, 3, 3, 5),
(3, 271135104, 22-01-2019, 2, 2, 7);

