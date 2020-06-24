CREATE TABLE fairphones(
id INT PRIMARY KEY NOT NULL,
serialnumber INT unique,
model INT,
price FLOAT,
manufacturing DATE,
warranty INT,
order_id INT FOREIGN KEY REFERENCES orders(id),
description_id INT FOREIGN KEY REFERENCES descriptions(id) NOT NULL,
promotions_id INT FOREIGN KEY REFERENCES promotion(id) NOT NULL
);