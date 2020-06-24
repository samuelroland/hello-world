CREATE TABLE shops(
id INT PRIMARY KEY NOT NULL,
name VARCHAR(45) unique,
street VARCHAR(45),
npa INT,
city VARCHAR(45),
country VARCHAR(45),
quantity INT
);
