CREATE TABLE Orders(
id INT NOT NULL PRIMARY KEY,
Number INT NOT NULL UNIQUE,
Date DATE NOT NULL,
States_id INT FOREIGN KEY REFERENCES States(id) NOT NULL,
Customers_id INT FOREIGN KEY REFERENCES Customers(id) NOT NULL
);