CREATE TABLE orders(
id INT PRIMARY KEY NOT NULL,
number INT unique,
date DATE,
state VARCHAR(20),
customer_id INT FOREIGN KEY REFERENCES customers(id) NOT NULL
);
