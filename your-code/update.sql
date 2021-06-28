update Customers 
set City = 'Miami'
where CustomerID = '20001';

select * from Customers;

update Customers
set Email = 'ppicasso@gmail.com' 
where Customer_Name LIKE '%Pablo Picasso%';

update Customers
set Email = 'lincoln@us.gov' 
where Customer_Name LIKE '%Abraham Lincoln%';


update Customers
set Email = 'hello@napoleon.me' 
where Customer_Name LIKE '%Napoléon Bonaparte%';