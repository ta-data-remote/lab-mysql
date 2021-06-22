CREATE DATABASE IF NOT EXISTS car_sales;
USE car_sales;


# Cars

DROP TABLE IF EXISTS cars;
CREATE TABLE IF NOT EXISTS cars (
    Id INT AUTO_INCREMENT,
    VIN VARCHAR(25),
    Manufacturer VARCHAR(15),
    Model VARCHAR(25),
    Car_year year,
    Color VARCHAR(15),
    PRIMARY KEY (Id)
);

# Customers

DROP TABLE IF EXISTS customers;
CREATE TABLE IF NOT EXISTS customers (
    Id INT AUTO_INCREMENT,
    Customer_name VARCHAR(25),
    Phone_number VARCHAR(25),
    Address VARCHAR(25),
    Email  VARCHAR(25),
    City VARCHAR(15),
    State_Province VARCHAR(15),
    Country VARCHAR(15),
    ZIP_Code VARCHAR(15),
    PRIMARY KEY (Id)
);

# Salesperson

DROP TABLE IF EXISTS salesperson;
CREATE TABLE IF NOT EXISTS salesperson (
	Id INT AUTO_INCREMENT,
    Staff_name VARCHAR(15),
    Store VARCHAR(15),
    PRIMARY KEY (Id)
);

# Invoices

DROP TABLE IF EXISTS invoices;
CREATE TABLE IF NOT EXISTS invoices (
	Id INT AUTO_INCREMENT,
    Invoice_number INT,
    Invoice_date VARCHAR(15),
    PRIMARY KEY (Id),
    Car_id INT,
    Customer_id INT,
    Staff_id INT,
    FOREIGN KEY (Car_id) REFERENCES cars(Id),
    FOREIGN KEY (Customer_id) REFERENCES customers(Id),
    FOREIGN KEY (Staff_id) REFERENCES salesperson(Id)
);
