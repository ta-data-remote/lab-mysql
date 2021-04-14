USE lab_mysql;

SELECT * FROM salespersons;

UPDATE salespersons
SET store='Miami'
WHERE ID=5;

DROP TABLE IF EXISTS newemail;
CREATE TABLE IF NOT EXISTS newemail (
id3 INT AUTO_INCREMENT,
email VARCHAR(255),
PRIMARY KEY (id3));

INSERT INTO newemail (email)
VALUES ('ppicasso@gmail.com'),('lincoln@us.gov'),('hello@napoleon.me');

select * from newemail;

SET SQL_SAFE_UPDATES = 1; -- ALWAYS BRING IT BACK TO SAFE
SET SQL_SAFE_UPDATES = 0;

UPDATE customers,newemail
SET customers.email=newemail.email
WHERE customers.ID=newemail.id3;

select * from customers;
