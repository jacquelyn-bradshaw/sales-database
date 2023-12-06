-- Create a new database called shop
CREATE DATABASE shop;

USE shop;

-- Add a new table called SALES1
CREATE TABLE sales1 (
	Store VARCHAR(20) NOT NULL,
	Week INT NOT NULL,
	Day VARCHAR(10) NOT NULL,
	SalesPerson VARCHAR(20) NOT NULL,
	SalesAmount FLOAT(2) NOT NULL,
	Month CHAR(3) NOT NULL
);
