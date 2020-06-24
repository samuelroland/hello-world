CREATE TABLE Promotions(
id INT PRIMARY KEY NOT NULL,
Name VARCHAR(45) NOT NULL UNIQUE,
Percentage_discount INT NOT NULL CHECK (Percentage_discount >=0) CHECK (Percentage_discount <=100)
);