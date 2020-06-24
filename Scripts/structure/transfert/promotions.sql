CREATE TABLE promotions(
id INT PRIMARY KEY NOT NULL,
name VARCHAR(45) unique,
discountpercentage INT,
description_id INT FOREIGN KEY REFERENCES descritpions(id) NOT NULL
);
