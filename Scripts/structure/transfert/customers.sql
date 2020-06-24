CREATE TABLE customers(
id INT PRIMARY KEY NOT NULL,
number INT unique,
firstname VARCHAR(45),
lastname VARCHAR(45),
birthdate DATE,
street VARCHAR(45),
npa INT,
city VARCHAR(45),
country VARCHAR(45),
registration DATE,
iban VARCHAR(45)
);