Use lab_mysql;


INSERT INTO Cars(VIN,Manufacturer,Model,Year,Color) VALUES 
('K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'),
('DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', 2019, 'Gray');
select * from Cars;

-- -------- --

Insert into Customers(Customer_ID,Name,Phone,Email,Address,City,State_Province,Country,Postal) values
(10001, "Pablo Picasso", "+34 636 17 63 82", "-", "Paseo de la Chopera, 14", "Madrid", "Madrid", "Spain", 28045),
(20001, "Abraham Lincoln", "+1 305 907 7086", "-", "120 SW 8th St", "Miami", "Florida", "United States", 33130),
(30001, "Napoléon Bonaparte", "+33 1 79 75 40 00", "-", "40 Rue du Colisée", "Paris", "Île-de-France", "France", 75008);
select * from Customers;

-- -------- --

Insert into Salespersons(Staff_ID,Name,Store) values
(00001, 'Petey Cruiser', 'Madrid'),
(00002, 'Anna Sthesia', 'Barcelona'),
(00003, 'Paul Molive', 'Berlin'),
(00004, 'Gail Forcewind', 'Paris'),
(00005, 'Paige Turner', 'Miami'),
(00006, 'Bob Frapples', 'Mexico City'),
(00007, 'Walter Melon', 'Amsterdam'),
(00008, 'Shonda Leer', 'São Paulo');

select * from Salespersons;

-- -------- --

Insert into Invoices(Invoice_number,Date,Car,Customer,Sales_Person) values
(852399038, 20180822, 2, 1, 3),
(731166526, 20181231, 3, 3, 5),
(271135104, 20190122, 2, 2, 2);

select * from Invoices;



update Customers
set Email = 'ppicasso@gmail.com' where ID = 1;
update Customers
set Email = 'lincoln@us.gov' where ID = 2;
update Customers
set Email = 'hello@napoleon.me' where ID = 3;

delete from Cars
where ID = 6;