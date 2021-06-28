use lab_mysql;

insert into cars (VIN, manufacturer, model, Year, color) values
("3K096I98581DHSNUP","Volkswagen","Tiguan","2019","Blue"),
("ZM8G7BEUQZ97IH46V","Peugeot","Rifter","2019","Red"),
("RKXVNNIHLVVZOUB4M","Ford","Fusion","2018","White"),
("HKNDGS7CU31E9Z7JW","Toyota","RAV4","2018","Silver"),
("DAM41UDN3CHU2WVF6	","Volvo","V60","2019","Gray"),
("DAM41UDN3CHU2WVF6","Volvo","V60 Cross Country	","2019","Gray");


insert into customers (customer_ID, name, phone_number, email, address, city, state_province, country, zip_code) values
("10001","Pablo Picasso","+34636176382","-","Paseo de la Chopera, 14","Madrid","Madrid","Spain","28045"),
("20001","Abraham Lincoln","+13059077086","-","120 SW 8th St","Miami","Florida","United States","28045"),
("30001","Napoléon Bonaparte","+33179754000","-","40 Rue du Colisée","Paris","Île-de-France","France","28045");

insert into salespersons (staff_ID, name, store) values
(00001,"Petey Cruiser","Madrid"),
(00002,"Anna Sthesia","Barcelona"),
(00003,"Paul Molive","Berlin"),
(00004,"Gail Forcewind","Paris"),
(00005,"Paige Turner","Mimia"),
(00006,"Bob Frapples","Mexico City"),
(00007,"Walter Melon","Amsterdam"),
(00008,"Shonda Leer","São Paulo");


insert into invoices (invoice_number, date, car, customer, salesperson) values -- date format not the same as in kickoff!!
(852399038,20180822,1,1,3),
(731166526,20181231,3,3,5),
(271135104,20190122,2,2,7);

select * from cars ;
select * from customers ;
select * from salespersons ;
select * from invoices ;
