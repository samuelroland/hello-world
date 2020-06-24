-- Projet: Database of E-Commerce MA08 Insert data.
-- Authors: Samuel Roland and Gatien Jayme
-- Date: novembre 2019
-- Source MCD: MCD-E-Commerce_Ma-08_introduction.png
-- Source MLD: MLD_GJE_SRD_E-commerce.png

--  Insert fictive data on every table in the right order (no crash with foreign key):

-- Insert Products
INSERT INTO ecomm.Products ('id', 'Number', 'Brands', 'Model', 'Description', 'Prices', 'Nb_pieces')
VALUES (1, 345, 'Bosch', 'Phanter', 'Moteur A345', 15, 5),
VALUES (2, 643, 'Poitu', 'Xtertap', 'Volant mousse rouge', 16, 3),
VALUES (3, 6215, 'Poitu', 'Bébé', 'Siege pour enfant sans accoudoir en coton', 50, 6),
VALUES (4, 9545, 'Bosch', 'Phanter', 'Moteur X66534', 150, 2),
VALUES (5, 2645, 'CousCous', 'Bébé', 'Coussin bébé', 60, 1),
VALUES (6, 2643, 'Pneuxhiv', 'drivex', 'Pneus dhiver', 80, 5),
VALUES (7, 935, 'Pneuxhiv', 'drivex', 'Pneus dété', 90, 4),
VALUES (8, 6459, 'Bosch', 'Phanter', 'Moteur turbo H6533', 260, 6),
VALUES (9, 258, 'Bosch', 'Tetra', 'Lubrifiant', 15, 9),
VALUES (10, 4593, 'Pan', 'Pro', 'Clé à molette', 9, 0),
VALUES (11, 226, 'XTOOZ', 'Pro', 'Multi clé', 17, 5);

-- Insert Promotions
INSERT INTO ecomm.Promotions ('id', 'Name', 'Percentage_discount')
VALUES (1, 'Promo Eté', 50),
VALUES (2, 'Promo Noel', 40),
VALUES (3, 'Promo St-Martin', 25),
VALUES (4, 'Promo Paques', 10);

-- Insert Categories
INSERT INTO ecomm.Categories('id', 'Name')
VALUES (1, 'Standard'),
VALUES (2, 'Gold'),
VALUES (3, 'Platine');

-- Insert States
INSERT INTO ecomm.States ('id', 'Name')
VALUES (1, 'Nouvelle'),
VALUES (2, 'En préparation'),
VALUES (3, 'Expédiée'),
VALUES (4, 'Terminée');

-- Insert Customers
INSERT INTO ecomm.Customers ('id', 'Number', 'Name', 'Firstname', 'Inscription', 'Categories_id')

VALUES (1, 123, 'ROCHE', 'Stéphane', '05.03.1958', 1),
VALUES (2, 35, 'Gaillard', 'Alice', '09.06.1955', 2),
VALUES (3, 356, 'Le Gall', 'Marc', '05.03.1952', 3),
VALUES (4, 67, 'Gerard', 'Jean', '05.03.1951', 2),
VALUES (5, 13, 'Collet', 'Philippe', '05.03.1949', 3),
VALUES (6, 07, 'Herve', 'Christelle', '05.03.1975', 3),
VALUES (7, 255, 'Roy', 'Sandra', '05.03.1982', 1),
VALUES (8, 567, 'Vidal', 'André', '05.03.1974', 3),
VALUES (9, 67, 'Picard', 'Raphaël', '05.03.2000', 1),
VALUES (10, 34, 'Perrot', 'Zoe', '05.03.1970', 2);


-- Insert benefit
INSERT INTO ecomm.Benefit ('id', 'Customers_id', 'Promotions_id')
VALUES (1, 4, 3),
VALUES (2, 5, 4),
VALUES (3, 9, 1),
VALUES (4, 1, 2),
VALUES (5, 10, 3),
VALUES (6, 6, 4),
VALUES (7, 2, 1),
VALUES (8, 7, 2),
VALUES (9, 3, 3),
VALUES (10, 8, 2);

-- Insert Orders
INSERT INTO ecomm.Orders ('id', 'Number', 'Date', 'States_id', 'Customers_id')

VALUES (1, 24, '16.08.2001', 2, 7),
VALUES (2, 64, '27.06.2003', 4, 3),
VALUES (3, 4674, '01.09.2005', 3, 2),
VALUES (4, 356, '13.03.2006', 1, 10),
VALUES (5, 252, '31.01.2002', 3, 5),
VALUES (6, 241, '08.11.2004', 4, 1),
VALUES (7, 4234, '19.07.2000', 2, 8),
VALUES (8, 644, '18.12.2009', 4, 4),
VALUES (9, 575, '05.05.2007', 1, 9),
VALUES (10, 699, '22.10.2004', 2, 6);

-- Insert reference
INSERT INTO ecomm.reference ('id', 'Products_id', 'Orders_id')
VALUES (1, 5, 1),
VALUES (2, 5, 2),
VALUES (3, 5, 3),
VALUES (4, 5, 4),
VALUES (5, 5, 5),
VALUES (6, 5, 6),
VALUES (7, 5, 7),
VALUES (8, 5, 8),
VALUES (9, 5, 9),
VALUES (10, 1, 10),
VALUES (11, 7, 11),
VALUES (12, 8, 12),
VALUES (13, 9, 13),
VALUES (14, 10, 14),
VALUES (15, 10, 15),
VALUES (16, 5, 16),
VALUES (17, 7, 17),
VALUES (18, 5, 18),
VALUES (19, 10, 19),
VALUES (20, 3, 20),
VALUES (21, 6, 20),
VALUES (22, 9, 20),
VALUES (23, 5, 20);
