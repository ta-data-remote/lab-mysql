USE car_sales;

INSERT INTO cars (VIN, Manufacturer, Model, Car_year, Color) VALUES 
('K096I98581DHSNUP', 'Volkswagen', 'Tiguan' , 2019 , 'Blue'),
('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter' , 2019 , 'Red'),
('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion' , 2018 , 'White'),
('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4' , 2018 , 'Silver'),
('DAM41UDN3CHU2WVF6', 'Volvo', 'V60' , 2019 , 'Gray'),
('DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country' , 2019 , 'Gray')
;

select * from car_sales.cars;

INSERT INTO customers(Customer_name,Phone_number,Address,Email,City,State_Province,Country,ZIP_Code) VALUES 
('Pablo Picasso','+34 636 17 63 82','Paseo de la Chopera, 14','','Madrid','Madrid','Spain',28045),
('Abraham Lincoln','+1 305 907 7086','120 SW 8th St','','Miami','Florida','United States',33130),
('Napoléon Bonaparte','+33 1 79 75 40 00','40 Rue du Colisée','','Paris','Île-de-France','France',75008)
;

select * from car_sales.customers;

INSERT INTO salesperson(Staff_name,Store) VALUES
('Petey Cruiser','Madrid'),
('Anna Sthesia','Barcelona'),
('Paul Molive','Berlin'),
('Gail Forcewind','Paris'),
('Paige Turner','Mimia'),
('Bob Frapples','Mexico City'),
('Walter Melon','Amsterdam'),
('Shonda Leer','São Paulo')
;

select * from car_sales.salesperson;

INSERT INTO invoices(Invoice_number,Invoice_date,Car_id,Customer_id,Staff_id) VALUES
(852399038,'22-08-2018',1,1,3),
(731166526,'31-12-2018',2,3,2),
(271135104,'22-01-2019',2,1,5)
;

select * from car_sales.invoices;





