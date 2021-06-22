USE cardealership;

select * from Salespersons;

update Salespersons
set Store = 'Miami'
where ID = 5;

select * from Salespersons;

select * from Customers;

update Customers
set Email = 'ppicasso@gmail.com'
where ID = 1;
update Customers
set Email = 'lincoln@us.gov'
where ID = 2;
update Customers
set Email = 'hello@napoleon.me'
where ID = 3;

select * from Customers;