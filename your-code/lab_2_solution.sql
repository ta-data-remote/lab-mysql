-- Introduction

/*As a data expert you work at a car dealership company which sells new cars of various brands and models.
 Your company is small and new but it has branches in several countries. Since the establishment of the company your colleagues have sold several cars to the customers. 
 Now your boss realized your company imperatively needs a database to keep the records about the cars, salespersons, customers, and invoices. 
 Your boss trusts you very much so he assigned you the challenge to design, create, and manage the database.
 */
 
 -- Challenge 1 - Design the Database
 
 /*
 Using pen and paper, design a database to meet the minimal requirements of your boss. The minimal information to be recorded is described below:

Cars - e.g. the vehicle identification number (VIN), manufacturer, model, year, and color of the cars in your company's inventory.

Customers - e.g. the customer ID, name, phone number, email, address, city, state/province, country, and zip/postal code of the customers.

Salespersons - e.g. staff ID, name, and the store at your company.

Invoices - e.g. the invoice number, date, car, customer, and salesperson related to each car sale.

Before solving this challenge, review your lesson about database structure and design then ask yourself:

What entities and attributes should be included in the database?
For each attribute, choose the data type that is most suitable
Note that in MySQL typically each entity table should have an auto-increment numeric ID. The auto-increment ID is different from the customer ID or staff ID.
Also note that some attributes are required while other ones can be blank
 */
 
 
 
 -- Challenge 2 - Create the Database and Tables
 
 /*
 1. Create a MySQL database for this lab. You can do so in the command line like this:

CREATE DATABASE lab_mysql;
USE lab_mysql;

Note: If you have set a password for the database user, you need to supply -p in the MySQL connection command. Once you hit enter, MySQL will ask you to type the password. 
If you didn't set the password for the database user, you don't need to supply -p in the connection command.

2. Now, based on the database design you created, write the SQL query to create the tables and columns. You will be using the CREATE TABLE statement for which you can 
find reference here.

You can test your CREATE TABLE statement in either SQL command line or the database software you installed (e.g. Sequel Pro or MySQL Workbench). 
Remember after creating each table, you need to delete it in order to test the same CREATE TABLE statement again.

3. After writing and testing all the statements, create a text file with the name create.sql. At the beginning of the file, indicate which database you want to use e.g.:

USE lab_mysql;

4. Then following the USE statement, write all your CREATE TABLE statements. 
You'll need one CREATE TABLE statement for each table you decide to create. Make sure to end each statement with a semicolon
 */
 
 -- 1.Create a MySQL database for this lab
 CREATE DATABASE lab_mysql;
 USE lab_mysql;
 
-- 2. Create table

CREATE TABLE IF NOT EXISTS cars(
ID INT NOT NULL AUTO_INCREMENT, 
VIN INT NOT NULL,
Manufacturer VARCHAR(20),
Model VARCHAR(40),
Year YEAR, 
Color VARCHAR(10),
PRIMARY KEY (ID,VIN)
); 
 
CREATE TABLE IF NOT EXISTS customers(
ID INT NOT NULL AUTO_INCREMENT,
Customer_ID VARCHAR(20) NOT NULL,
Name VARCHAR(20),
Phone_number VARCHAR(20),
Email VARCHAR(40),
Address VARCHAR(40), 
City VARCHAR(40),
Province VARCHAR(40),
Country VARCHAR(40),
Zip_code VARCHAR(10), 
PRIMARY KEY (ID,Customer_ID)
);  
 
 CREATE TABLE IF NOT EXISTS sales_persons(
ID INT NOT NULL AUTO_INCREMENT,
Staff_ID VARCHAR(20) NOT NULL,
Name VARCHAR(20),
Store VARCHAR(20),
PRIMARY KEY (ID,Staff_ID)
); 
 
 -- YYYY-MM-DD for the date entries
 -- car should be a foreign key as is the one we relate with the cars table
 
  CREATE TABLE IF NOT EXISTS invoices(
ID INT NOT NULL AUTO_INCREMENT,
Invoice_number VARCHAR(20) NOT NULL,
Date DATE,
car VARCHAR(20),
customer VARCHAR(40),
sales_person VARCHAR(40), 
PRIMARY KEY (ID,Invoice_number),
FOREIGN KEY (car) REFERENCES cars(ID),
FOREIGN KEY (sales_person) REFERENCES sales_persons(Staff_ID)
); 
 
 
 
 
 
 
 
 
 
 -- Challenge 3 - Seeding the Database
 
 /*
 The purpose of database seeding is to provide some dummy data for an empty database so that software development can be started based on the dummy data. 
 In this challenge you will create seeding.sql which inserts dummy data rows into the tables of your new database.

You'll be using the INSERT INTO statement for this purpose. A tutorial you can refer to can be fine here.

For your convenience, we provide you some example dummy data. These dummy data may not readily work with your database depending on how you have designed your database. You may need to change them to the appropriate form.
 */
 
 -- Bonus Challenge - Updating and Deleting Database Records
 
 /*
 Now you find an error you need to fix in your existing data - in the Salespersons table, you mistakenly spelled Miami as Mimia for Paige Turner. Also, you received the email addresses of the three customers:

Name	Email
Pablo Picasso	ppicasso@gmail.com
Abraham Lincoln	lincoln@us.gov
Napoléon Bonaparte	hello@napoleon.me
 */
 
 
 
 
 
 