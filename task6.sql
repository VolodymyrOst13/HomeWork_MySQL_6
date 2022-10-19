CREATE TABLE ShopDB.Customers    
(                                      
	CustumerNo int NOT NULL, 
	Name varchar(25) NOT NULL,
	Address varchar(25) NOT NULL,
	City      varchar(15) NOT NULL,
	PLZ char(4) NOT NULL,
	Email varchar(25) NOT NULL,
	Phone char(12),
	DateInSystem date NOT NULL 
);

DROP TABLE ShopDB.Customers;

CREATE TABLE ShopDB.Customers     
(                                      
	CustumerNo int NOT NULL PRIMARY KEY,    
	Name varchar(25) NOT NULL,
	Address varchar(25) NOT NULL,
	City      varchar(15) NOT NULL,
	PLZ char(4) NOT NULL,
	Email varchar(25) NOT NULL,
	Phone char(12) NOT NULL unique,
	DateInSystem date NOT NULL 
);
INSERT INTO ShopDB.Customers
( CustumerNo, Name, Address, City, PLZ, Email, Phone, DateInSystem)
VALUES
(1,'Olexandr', 'Postgasse', 'Wien', '1200', 'olexandr@gmail.com', '066499988256', NOW()),
(2,'Bogdan', 'Pielachgasse', 'Wien', '1010', 'bogdan@gmail.com', '066488899256', NOW());

CREATE INDEX CustumerName ON ShopDB.Customers (Name);
EXPLAIN  SELECT * FROM ShopDB.Customers WHERE Name in ('Olexandr');

EXPLAIN  SELECT * FROM ShopDB.Customers WHERE Phone in ('(093)1231212');

