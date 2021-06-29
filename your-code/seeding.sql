#Challenge 3 - Seeding



USE lab_mysql;


SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";



INSERT INTO Cars (VIN,Manufacturer,Model,Year,Color)
VALUES ('3K096I98581DHSNUP','Volkswagen','Tiguan','2019','Blue'),
('ZM8G7BEUQZ97IH46V','Peugeot','Rifter','2019','Red'),
('RKXVNNIHLVVZOUB4M','Ford','Fusion','2018','White'),
('HKNDGS7CU31E9Z7JW','Toyota','RAV4','2018','Silver'),
('DAM41UDN3CHU2WVF6','Volvo','V60','2019','Gray'), 
('DAM41UDN3CHU2WVF6', 'Volvo',	'V60 Cross Country','2019',	'Gray');


INSERT INTO Customer (Customer_ID,	Name,	Phone,	Email,	Address,	City,	State_Province,	Country,	Postal
)

VALUES('10001',	'Pablo Picasso',	'+34 636 17 63 82'	,'','Paseo de la Chopera, 14',	'Madrid',	'Madrid',	'Spain',	'28045'),
('20001',	'Abraham Lincoln',	'+1 305 907 7086'	, '','120 SW 8th St'	,'Miami',	'Florida',	'United States',	'33130'),
('30001',	'Napoléon Bonaparte',	'+33 1 79 75 40 00', '','40 Rue du Colisée',	'Paris',	'Île-de-France'	,'France',	'75008');


INSERT INTO Staff ( Staff_ID, Name, Store)
Values ('1',	'Petey Cruiser',	'Madrid'),
('2',	'Anna Sthesia',	'Barcelona'),
('3',	'Paul Molive',	'Berlin'),
('4',	'Gail Forcewind', 'Paris'),
('5',	'Paige Turner',	'Mimia'),
('6',	'Bob Frapples',	'Mexico City'),
('7',	'Walter Melon',	'Amsterdam'),
('8',	'Shonda Leer',	'São Paulo');


INSERT INTO Invoices ( Invoice_Number,	Invoice_Date,	Car,	Customer,	Sales_Person
)
Values ('852399038',	'22.08.2018',104,	'1',	'1',	'3'),
('731166526',	'31.12.2018',	'3',	'3',	'5'),
('271135104',	'22.01.2019',	'2',	'2',	'7');







