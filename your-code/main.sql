-- LAB SQL DAY 2 - CREATE, DELETE, SEEDING AND UPDATE

-- Challenge 1 + 2 - Design and Create the Database

CREATE DATABASE IF NOT EXISTS cars_tables;
USE cars_tables;


-- Cars - e.g. the vehicle identification number (VIN), manufacturer, model, year, and color of the cars in your company's inventory.
DROP TABLE IF EXISTS Cars;
CREATE TABLE IF NOT EXISTS Cars (
    id INT auto_increment PRIMARY KEY,
    vin varchar(255),
    manufacturer VARCHAR(255),
    model VARCHAR(25),
    year VARCHAR(25),
    color VARCHAR(15)
   );
   
   -- the customer ID, name, phone number, email, address, city, state/province, country, and zip/postal code of the customers.
DROP TABLE IF EXISTS Customers_cars;
CREATE TABLE IF NOT EXISTS Customers_cars (
    id INT auto_increment PRIMARY KEY,
    cust_id INT,
    name VARCHAR(255),
    phone_number VARCHAR(20),
    email VARCHAR(255),
    address VARCHAR(255), 
    city VARCHAR(255),
    state VARCHAR(255),
    country VARCHAR(255),
    postal_code INT  
   );
   
   -- Salespersons - e.g. staff ID, name, and the store at your company.
DROP TABLE IF EXISTS Salespersons_cars;
CREATE TABLE IF NOT EXISTS Salespersons_cars (
    id INT auto_increment PRIMARY KEY,
    staff_id INT,
    name VARCHAR(255),
    store VARCHAR(255)   
   );
   
   -- Invoices - e.g. the invoice number, date, car, customer, and salesperson related to each car sale.
DROP TABLE IF EXISTS Invoices_cars;
CREATE TABLE IF NOT EXISTS Invoices_cars (
    id INT auto_increment PRIMARY KEY,
    Invoice_number INT,
    date VARCHAR(30),
    car VARCHAR(255),
    customer VARCHAR(25),
    salesperson VARCHAR(15),
    FOREIGN KEY (car) REFERENCES Cars(id),
    FOREIGN KEY (customer) REFERENCES Customers_cars(id),
    FOREIGN KEY (salesperson) REFERENCES Salespersons_cars(id)
   );
   
   -- Challenge 3 - Seeding the Database
   
INSERT INTO Cars (vin, manufacturer, model, year, color)
VALUES 
('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan',  2019, 'Blue'),
('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter',  2019, 'Red'),
('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion',  2018, 'White'),
('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4',  2018, 'Silver'),
('DAM41UDN3CHU2WVF6', 'Volvo', 'V60',  2019, 'Gray'),
('DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country',  2019, 'Gray');

SELECT * FROM Customers_cars;

INSERT INTO Customers_cars (cust_id, name, phone_number, email, address, city, state, country, postal_code)
VALUES 
(10001, 'Pablo Picasso', '+34 636 17 63 82', '-',  'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', 28045),
(20001, 'Abraham Lincoln', '+1 305 907 7086', '-', '120 SW 8th St',  'Miami', 'Florida', 'USA', 33130),
(30001, 'Napoléon Bonaparte', '+33 1 79 75 40 00', '-', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', 75008);

INSERT INTO Salespersons_cars (staff_id, name, store)
VALUES 
(00001, 'Petey Cruiser', 'Madrid'),
(00002, 'Anna Sthesia', 'Barcelona'),
(00003, 'Paul Molive', 'Berlin'),
(00004, 'Gail Forcewind', 'Paris'),
(00005, 'Paige Turner', 'Mimia'),
(00006, 'Bob Frapples', 'Mexico City'),
(00007, 'Walter Melon', 'Amsterdam'),
(00008, 'Shonda Leer', 'São Paulo');

-- SELECT * FROM Salespersons_cars;
INSERT INTO Invoices_cars (Invoice_number, date, car, customer, salesperson)
VALUES 
(852399038, '22-08-2018', 1,	1,	3),
(731166526, '31-12-2018', 3,	3,	5),
(271135104, '22-01-2019', 2,	2,	7);



-- BONUS - UPDATE AND DELETE

UPDATE Customers_cars SET email = 'ppicasso@gmail.com' WHERE id = 1;
UPDATE Customers_cars SET email = 'lincoln@us.gov' WHERE id = 2;
UPDATE Customers_cars SET email = 'hello@napoleon.me' WHERE id = 3;

UPDATE Salespersons_cars SET store = 'Miami' WHERE id = 5;
    


SELECT * FROM Customers_cars;



