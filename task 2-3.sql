CREATE DATABASE MyJoinsDB;

 CREATE TABLE MyJoinsDB.Employee
(
    id INT AUTO_INCREMENT NOT NULL, 
	firstName VARCHAR(30) NOT NULL,   			 
    lastName VARCHAR(30) NOT NULL, 				 
    phone VARCHAR(20) NOT NULL unique,
	PRIMARY KEY (id)
);

CREATE INDEX firstName ON MyJoinsDB.Employee (lastName); 
EXPLAIN  SELECT * FROM MyJoinsDB.Employee WHERE lastName in ('Іванов');


EXPLAIN  SELECT * FROM MyJoinsDB.Employee WHERE phone in ('0997778866');

INSERT MyJoinsDB.Employee( firstName, lastName, phone)
VALUES
('Іван', 'Іванов', '0998887766'),
('Петро', 'Петров', '0997778866'),
('Діма', 'Дімов', '0991113322'),
('Василь', 'Василенко', '0993334455');
 SELECT * FROM  MyJoinsDB.Employee ;