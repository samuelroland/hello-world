CREATE TABLE Customers(
id INT PRIMARY KEY,
Number INT NOT NULL,
Name VARCHAR(45) NOT NULL,
Firstname VARCHAR(45) NOT NULL,
Inscription VARCHAR(45) NOT NULL,
Categories_id INT FOREIGN KEY REFERENCES Categories(id) NOT NULL
);