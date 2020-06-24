-- Projet: Database of E-Commerce MA08
-- Authors: Samuel Roland and Gatien Jayme
-- Date: novembre 2019
-- Source MCD: MCD-E-Commerce_Ma-08_introduction.png
-- Source MLD: MLD_GJE_SRD_E-commerce.png

-- start of the code
use master
go

-- delete database
IF db_id('ecomm') IS NOT NULL
BEGIN
	drop database ecomm
END

-- create database cpnv and apply the configuration of the data file and log file.
CREATE DATABASE ecomm
	ON PRIMARY
	( NAME ="ECommerce_data", FILENAME = "C:\DATA\MSSQL\ECOMMERCE.mdf",  SIZE = 20480KB , MAXSIZE = 51200KB, FILEGROWTH = 1024KB )
	LOG ON 
	( NAME = "ECommerce_log", FILENAME = "C:\DATA\MSSQL\ECOMMERCE.ldf" , SIZE = 10240KB , MAXSIZE = 20480KB , FILEGROWTH = 1024KB)
go

USE ecomm
go

-- creation of tables in the right order
	
-- create Products
CREATE TABLE Products(
id INT PRIMARY KEY NOT NULL,
Number INT NOT NULL UNIQUE,
Brands VARCHAR(45) NOT NULL,
Model VARCHAR(45) NOT NULL,
Description VARCHAR(45) NOT NULL,
Prices FLOAT NOT NULL,
Nb_pieces INT NOT NULL
);

-- create Promotions
CREATE TABLE Promotions(
id INT PRIMARY KEY NOT NULL,
Name VARCHAR(45) NOT NULL UNIQUE,
Percentage_discount INT NOT NULL CHECK (Percentage_discount >=0) AND CHECK (Percentage_discount <=100)
);

-- create Categories
CREATE TABLE Categories(
id INT NOT NULL PRIMARY KEY,
Name VARCHAR(45) NOT NULL UNIQUE
);

-- create States
CREATE TABLE States (
id INT NOT NULL PRIMARY KEY,
Name VARCHAR(45) NOT NULL UNIQUE
);

-- create Customers
CREATE TABLE Customers(
id INT PRIMARY KEY,
Number INT NOT NULL UNIQUE,
Name VARCHAR(45) NOT NULL,
Firstname VARCHAR(45) NOT NULL,
Inscription VARCHAR(45) NOT NULL,
Categories_id INT FOREIGN KEY REFERENCES Categories(id) NOT NULL
);

-- create benefit
CREATE TABLE benefit(
id INT PRIMARY KEY NOT NULL,
Customers_id INT FOREIGN KEY REFERENCES Customers(id) NOT NULL,
Promotions_id INT FOREIGN KEY REFERENCES Promotions(id) NOT NULL
);

-- create Orders
CREATE TABLE Orders(
id INT NOT NULL PRIMARY KEY,
Number INT NOT NULL UNIQUE,
Date DATE NOT NULL,
States_id INT FOREIGN KEY REFERENCES States(id) NOT NULL,
Customers_id INT FOREIGN KEY REFERENCES Customers(id) NOT NULL
);

-- create reference
CREATE TABLE reference(
id INT PRIMARY KEY NOT NULL,
Products_id INT FOREIGN KEY REFERENCES Products(id) NOT NULL,
Orders_id INT FOREIGN KEY REFERENCES Orders(id) NOT NULL
);

