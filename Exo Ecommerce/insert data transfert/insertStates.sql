CREATE TABLE States (
id INT NOT NULL PRIMARY KEY,
Name VARCHAR(45) NOT NULL
);

INSERT INTO States (id, Name)
VALUES (1, "Nouvelle"),
VALUES (2, "En préparation"),
VALUES (3, "Expédiée"),
VALUES (4, "Terminée");