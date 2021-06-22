UPDATE salespersons
SET 
staff_location = 'Miami'
WHERE
id = 5;

SELECT * from salespersons;

UPDATE customers SET email = 'ppicasso@gmail.com' WHERE id = 1;
UPDATE customers SET email = 'lincoln@us.gov' WHERE id = 2;
UPDATE customers SET email = 'hello@napoleon.me' WHERE id = 3;

SELECT * FROM customers;
