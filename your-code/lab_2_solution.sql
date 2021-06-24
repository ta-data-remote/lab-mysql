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
 -- CREATE DATABASE lab_mysql;
 USE lab_mysql;
 
-- 2. Create table

drop table if exists cars;

CREATE TABLE IF NOT EXISTS cars(
ID INT NOT NULL AUTO_INCREMENT, 
VIN VARCHAR(20),
Manufacturer VARCHAR(20),
Model VARCHAR(40),
Year YEAR, 
Color VARCHAR(10),
PRIMARY KEY (ID)
); 

drop table if exists customers;
 
CREATE TABLE IF NOT EXISTS customers(
ID INT NOT NULL AUTO_INCREMENT,
Customer_ID INT,
Name VARCHAR(20),
Phone_number VARCHAR(20),
Email VARCHAR(40),
Address VARCHAR(40), 
City VARCHAR(40),
Province VARCHAR(40),
Country VARCHAR(40),
Zip_code VARCHAR(10), 
PRIMARY KEY (ID)
);  
 
drop table if exists sales_persons;
 
 CREATE TABLE IF NOT EXISTS sales_persons(
ID INT NOT NULL AUTO_INCREMENT,
Staff_ID INT(5) ZEROFILL,
Name VARCHAR(20),
Store VARCHAR(20),
PRIMARY KEY (ID)
); 
 
 -- YYYY-MM-DD for the date entries
 -- car should be a foreign key as is the one we relate with the cars table
 
 -- Foreign keys shoud be of the same type as primary keys
 
 drop table if exists invoices;

CREATE TABLE IF NOT EXISTS invoices(
ID INT NOT NULL AUTO_INCREMENT,
Invoice_number INT,
Date DATE,
car INT  NOT NULL,
customers INT,
sales_persons INT, 
PRIMARY KEY (ID),
FOREIGN KEY (car) REFERENCES cars(ID),
FOREIGN KEY (sales_persons) REFERENCES sales_persons(ID),
FOREIGN KEY (customers) REFERENCES customers(ID)
); 
 

 
 
 
 
 
 
 
 -- Challenge 3 - Seeding the Database
 
 /*
 The purpose of database seeding is to provide some dummy data for an empty database so that software development can be started based on the dummy data. 
 In this challenge you will create seeding.sql which inserts dummy data rows into the tables of your new database.

You'll be using the INSERT INTO statement for this purpose. A tutorial you can refer to can be fine here.

For your convenience, we provide you some example dummy data. These dummy data may not readily work with your database depending on how you have designed your database. You may need to change them to the appropriate form.
 */
 
 -- we dont insert int he autoincrement, MAKE SURE WE INTER THE RIGHT TYPE OF VARIABLE, VARCHAR AS STRING
 -- WE ENTER BY ROW THE INFO
 
 INSERT INTO cars (VIN,Manufacturer,Model,Year,Color) 
 VALUES ('3K096I98581DHSNUP','Volkswagen','Tiguan',2019,'Blue'),
 ('ZM8G7BEUQZ97IH46V','Peugeot', 'Rifter', 2019,'Red'),
 ('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion',2018,'White'),
 ('HKNDGS7CU31E9Z7JW', 'Toyota','RAV4', 2018,'Silver'),
 ('DAM41UDN3CHU2WVF6','Volvo', 'V60', 2019,'Gray'),
 ('DAM41UDN3CHU2WVF6','Volvo', 'V60 Cross Country',2019,'Gray');
 
 SELECT * FROM cars;
 
 -- no emails
  INSERT INTO customers (Customer_ID,Name,Phone_number,Email ,Address ,City,Province,Country,Zip_code ) 
 VALUES (10001,'Pablo Picasso','+34 636 17 63 82','-' , 'Paseo de la Chopera, 14','Madrid',	'Madrid','Spain','28045'),
(20001,	'Abraham Lincoln',	'+1 305 907 7086','-' ,'120 SW 8th St','Miami','Florida','United States','33130'),
(30001,	'Napoléon Bonaparte','+33 1 79 75 40 00','-' ,'40 Rue du Colisée','Paris','Île-de-France','France','75008');
 
  SELECT * FROM customers;
 

-- I had to add to the variable staff id int(5) zerofill to diplay the 0 infront, otherwise I had to change to varchar

INSERT INTO sales_persons (Staff_ID,Name,Store)
 VALUES (00001,	'Petey Cruiser','Madrid'),
(00002,	'Anna Sthesia','Barcelona'),
(00003,	'Paul Molive','Berlin'),
(00004,	'Gail Forcewind','Paris'),
(00005,	'Paige Turner','Mimia'),
(00006,	'Bob Frapples','Mexico City'),
(00007,	'Walter Melon','Amsterdam'),
(00008,	'Shonda Leer','São Paulo');

  SELECT * FROM sales_persons;
  
  
  -- dates have to be like YYYY-MM-DD and string
  
 INSERT INTO invoices(Invoice_number,Date,car,customers,sales_persons)
 VALUES (852399038,'2018-08-22',1,1,3),
(731166526,'2018-12-31',3,3,5),
(271135104,'2019-01-22',2,2,7);

 SELECT * FROM invoices;

 
 
 -- Bonus Challenge - Updating and Deleting Database Records
 
 /*
 Now you find an error you need to fix in your existing data - in the Salespersons table, you mistakenly spelled Miami as Mimia for Paige Turner. Also, you received the email addresses of the three customers:

Name	Email
Pablo Picasso	ppicasso@gmail.com
Abraham Lincoln	lincoln@us.gov
Napoléon Bonaparte	hello@napoleon.me
 */
 
 -- you mistakenly spelled Miami as Mimia for Paige Turner. 
 -- to update I need to specify in the where statement the ID
 
 UPDATE sales_persons SET Store = 'Miami'
 where ID = 5;
 
 SELECT * FROM sales_persons;
 
 -- received the email addresses of the three customer.
 -- I like to add a column in the costumers table
 
  SELECT * FROM customers;
  
-- you can modify various columns at once
-- I see you can use replace on the set, i can not use is where conditions if i dont change something from the settings
-- i dont know how to update the whole column in once

UPDATE customers SET Email = REPLACE(Email,'-','ppicasso@gmail.com')
where ID = 1;

 UPDATE customers SET Email = 'lincoln@us.gov'
 where ID = 2;

 UPDATE customers SET Email = 'hello@napoleon.me'
 where ID = 3;

 
 -- in addition, you also find a duplicated car entry for VIN DAM41UDN3CHU2WVF6. You want to delete car ID #4 from the database.
 
 DELETE FROM cars 
 where ID =12;
 
 SELECT * FROM cars;
 