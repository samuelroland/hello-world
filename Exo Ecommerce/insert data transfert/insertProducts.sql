CREATE TABLE Products(
id INT PRIMARY KEY NOT NULL,
Number INT NOT NULL UNIQUE,
Brands VARCHAR(45) NOT NULL,
Model VARCHAR(45) NOT NULL,
Description VARCHAR(45) NOT NULL,
Prices FLOAT NOT NULL,
Nb_pieces INT NOT NULL
);

INSERT INTO Products (`id`, `Number`, `Brands`, `Model`, `Description`, `Prices`, `Nb_pieces`)
VALUES (1, 345, 'Bosch', 'Phanter', 'Moteur A345', 15, 5);
VALUES (2, 643, 'Poitu', 'Xtertap', 'Volant mousse rouge', 16, 3);
VALUES (3, 6215, 'Poitu', 'Bébé', 'Siege pour enfant sans accoudoir en coton', 50, 6);
VALUES (4, 9545, 'Bosch', 'Phanter', 'Moteur X66534', 150, 2);
VALUES (5, 2645, 'CousCous', 'Bébé', 'Coussin bébé', 60, 1);
VALUES (6, 2643, 'Pneuxhiv', 'drivex', 'Pneus dhiver', 80, 5);
VALUES (7, 935, 'Pneuxhiv', 'drivex', 'Pneus dété', 90, 4);
VALUES (8, 6459, 'Bosch', 'Phanter', 'Moteur turbo H6533', 260, 6);
VALUES (9, 258, 'Bosch', 'Tetra', 'Lubrifiant', 15, 9);
VALUES (10, 4593, 'Pan', 'Pro', 'Clé à molette', 9, 0);
VALUES (11, 226, 'XTOOZ', 'Pro', 'Multi clé', 17, 5);