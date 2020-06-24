CREATE TABLE components(
id INT PRIMARY KEY NOT NULL,
serialnumber INT unique,
model INT,
price FLOAT,
manufacturing DATE,
order_id INT FOREIGN KEY REFERENCES descritpions(id),
descriptions_id INT FOREIGN KEY REFERENCES descritpions(id) NOT NULL
);
