-- Projet: Projet Database SQL Server Fairphone MA08
-- File: Script for create the database and the tables in Fairphone database.
-- Authors: Samuel Roland and Gatien Jayme
-- Date: janvier 2020
-- Source MCD: MCD Fairphone.pdf
-- Source MLD: MLD Fairphone.pdf

-- start of the code
use master
go

-- delete database
IF db_id('Fairphone') IS NOT NULL
BEGIN
	drop database Fairphone
END

-- create database cpnv and apply the configuration of the data file and log file.
CREATE DATABASE Fairphone
	ON PRIMARY
	( NAME ="Fairphone_data", FILENAME = "C:\DATA\MSSQL\Fairphone.mdf",  SIZE = 20480KB , MAXSIZE = 51200KB, FILEGROWTH = 1024KB )
	LOG ON 
	( NAME = "Fairphone_log", FILENAME = "C:\DATA\MSSQL\Fairphone_logs.ldf" , SIZE = 10240KB , MAXSIZE = 20480KB , FILEGROWTH = 1024KB)
go

USE Fairphone
go

-- creation of tables in the same order as import the data in tables

-- create customers
CREATE TABLE customers(
id INT PRIMARY KEY NOT NULL,
number INT unique,
firstname VARCHAR(45),
lastname VARCHAR(45),
birthdate DATE check (birthdate>='1900-01-01'),
street VARCHAR(45),
npa INT,
city VARCHAR(45),
country VARCHAR(45),
registration DATE CHECK (registration>='2000-01-01'),
iban VARCHAR(45)
);

-- create articles
CREATE TABLE articles(
id INT PRIMARY KEY NOT NULL,
number INT unique,
date DATE CHECK (date>='2000-01-01'),
title VARCHAR(200),
author VARCHAR(70),
content VARCHAR(8000),
views INT
);

-- create shops
CREATE TABLE shops(
id INT PRIMARY KEY NOT NULL,
name VARCHAR(45) unique,
street VARCHAR(45),
npa INT,
city VARCHAR(45),
country VARCHAR(45),
quantity INT
);

-- create descriptions
CREATE TABLE descriptions(
id INT PRIMARY KEY NOT NULL,
number INT unique,
content VARCHAR(700),
date DATE check (date>='2000-01-01'),
author VARCHAR(45),
);

-- create promotions
CREATE TABLE promotions(
id INT PRIMARY KEY NOT NULL,
name VARCHAR(100) unique,
discountpercentage INT,
description_id INT FOREIGN KEY REFERENCES descriptions(id) ON delete cascade NOT NULL
);

-- create orders
CREATE TABLE orders(
id INT PRIMARY KEY NOT NULL,
number INT unique,
date DATE check (date>='2000-01-01'),
state VARCHAR(20),
customer_id INT FOREIGN KEY REFERENCES customers(id) NOT NULL
);

-- create components
CREATE TABLE components(
id INT PRIMARY KEY NOT NULL,
serialnumber BIGINT unique,
model INT,
price FLOAT check (price>0),
manufacturing DATE check (manufacturing>='2000-01-01'),
order_id INT FOREIGN KEY REFERENCES orders(id),
descriptions_id INT FOREIGN KEY REFERENCES descriptions(id) ON DELETE CASCADE NOT NULL
);

-- create benefit
CREATE TABLE benefit(
id INT PRIMARY KEY NOT NULL,
customer_id INT FOREIGN KEY REFERENCES customers(id) NOT NULL,
promotion_id INT FOREIGN KEY REFERENCES promotions(id) NOT NULL
);

-- create emails
CREATE TABLE emails(
id INT PRIMARY KEY NOT NULL,
content VARCHAR(60),
registration DATE check (registration>='2000-01-01'),
customers_id INT FOREIGN KEY REFERENCES customers(id) NOT NULL,
);

-- create fairphones
CREATE TABLE fairphones(
id INT PRIMARY KEY NOT NULL,
serialnumber BIGINT unique,
model INT,
price FLOAT check (price>0),
manufacturing DATE check (manufacturing>='2000-01-01'),
order_id INT FOREIGN KEY REFERENCES orders(id),
descriptions_id INT FOREIGN KEY REFERENCES descriptions(id) NOT NULL,
promotions_id INT FOREIGN KEY REFERENCES promotions(id) NOT NULL
);