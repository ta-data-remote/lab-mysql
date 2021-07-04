INSERT INTO Cars (VIN, Manufacturer, Model, Year, Color)
VALUES ('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter' ,'2019', 'Red');

INSERT INTO Customers (Customer_ID, Name, Mobile, Email, Address, City, State, Country,  ZIP)
VALUES ('20001', 'Abraham Lincoln', '+1 305 907 7086', '-', '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130');

INSERT INTO Salespersons (Staff_ID, Name, Store)
VALUES ('00002', 'Anna Sthesia', 'Barcelona');

INSERT INTO Invoices (Invoice_number, Date, Car, Customer, Salesperson)
VALUES ('731166526', '31.12.18','3', '3', '5');

SELECT * FROM Invoices;