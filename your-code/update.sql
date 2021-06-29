USE lab_mysql;


SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";

Update Customer 
SET Email = 'ppicasso@gmail.com'
WHERE ID = 1;

Update Customer 
SET Email = 'lincoln@us.gov'
WHERE ID = 1;

Update Customer 
SET Email = 'hello@napoleon.me'
WHERE ID = 1;

Update Staff
SET Store = 'Miami'
WHERE ID = 5;
