/* Challenge 1 and 2 - Design & Create the Database */

USE labs;

DROP TABLE IF EXISTS cars;
CREATE TABLE IF NOT EXISTS cars(
id INT AUTO_INCREMENT,
VIN VARCHAR(30),
manufacturer VARCHAR(30),
model VARCHAR(30),
car_year VARCHAR(4),
color VARCHAR(30),
PRIMARY KEY (id)
)
AUTO_INCREMENT = 1;

DROP TABLE IF EXISTS salespersons;
CREATE TABLE IF NOT EXISTS salespersons(
id INT AUTO_INCREMENT,
staff_id INT NOT NULL,
staff_name VARCHAR(30),
staff_location VARCHAR(30),
PRIMARY KEY (id)
)
AUTO_INCREMENT = 1;

DROP TABLE IF EXISTS customers;
CREATE TABLE IF NOT EXISTS customers(
id INT AUTO_INCREMENT,
cust_id INT NOT NULL,
cust_name VARCHAR(30),
phone_number VARCHAR(30),
email VARCHAR(30),
address VARCHAR(30),
city VARCHAR(30),
state VARCHAR(30),
country VARCHAR(30),
postal_code INT,
PRIMARY KEY (id)
)
AUTO_INCREMENT = 1;

DROP TABLE IF EXISTS invoices;
CREATE TABLE IF NOT EXISTS invoices(
id INT AUTO_INCREMENT,
invoice_id INT,
invoice_date DATE,
car INT NOT NULL,
customer INT NOT NULL,
staff INT NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (customer) REFERENCES customers(id),
FOREIGN KEY (staff) REFERENCES salespersons(id),
FOREIGN KEY (car) REFERENCES cars(id)
)
AUTO_INCREMENT = 1;

-- cars, salespersons and customers are one-to-one.
-- invoices is many-to-many


