CREATE TABLE Promotions(
id INT PRIMARY KEY NOT NULL,
Name VARCHAR(45) NOT NULL UNIQUE,
Percentage_discount INT NOT NULL CHECK (Percentage_discount >=0) CHECK (Percentage_discount <=100)
);

INSERT INTO Promotions (id, Name, Percentage_discount)
VALUES (1, "Promo Eté", 50),
VALUES (2, "Promo Noel", 40),
VALUES (3, "Promo St-Martin", 25),
VALUES (4, "Promo Paques", 10);