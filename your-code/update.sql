USE car_sales;

UPDATE salesperson
SET Store = 'Miami'
where id = 5;

select * from car_sales.salesperson;

UPDATE customers
SET email = 'ppicasso@gmail.com' WHERE id = 1;

UPDATE customers
SET email = 'lincoln@us.gov' WHERE id = 2;

UPDATE customers
SET email = 'hello@napoleon.me' WHERE id = 3;

select * from car_sales.customers;