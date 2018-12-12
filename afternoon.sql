CREATE TABLE Person(
  ID INTEGER PRIMARY KEY AUTOINCREMENT,
  Name string,
  Age integer,
  Height integer,
  City string,
  FavoriteColor string
);

INSERT INTO Person (Name, Age, Height, City, FavoriteColor)
VALUES
	('John', 22, 185, 'Dallas', 'blue'),
	('Jay', 24, 190, 'Dallas', 'red'),
	('Edward', 30, 188, 'Dallas', 'green'),
	('Sarah', 27, 160, 'Odessa', 'red'),
	('Kristen',	30, 180, 'Dallas', 'purple');

SELECT * FROM Person ORDER BY height DES

SELECT * FROM Person ORDER BY height ASC

SELECT * FROM Person ORDER BY Age DESC

SELECT * FROM Person WHERE Age > 20;

SELECT * FROM Person WHERE Age = 18;

SELECT * FROM Person WHERE Age < 20 OR Age > 30;

SELECT * FROM Person WHERE Age != 27;

SELECT * FROM Person WHERE FavoriteColor != 'red';

SELECT * FROM Person WHERE FavoriteColor != 'red' AND FavoriteColor != 'blue';

SELECT * FROM Person WHERE FavoriteColor = 'orange' OR FavoriteColor = 'green';

SELECT * FROM Person WHERE FavoriteColor IN ('orange', 'green', 'blue');

SELECT * FROM Person WHERE FavoriteColor IN ('yellow', 'purple');


CREATE TABLE Orders(PersonID integer, ProductName string, ProductPrice float, Quantity integer)

INSERT INTO Orders(PersonID, ProductName, ProductPrice, Quantity)
VALUES
	(0, 'toothbrush', 10.50, 1),
    (1, 'phone', 400.50, 1),
    (2, 'tv', 550.30, 1),
    (3, 'socks', 20.40, 3),
    (4, 'glue', 1.30, 1);

SELECT * FROM Orders;

SELECT sum(Quantity) FROM Orders;

SELECT sum(ProductPrice) FROM Orders;

SELECT sum(ProductPrice * Quantity) FROM Orders WHERE PersonID = 3;

INSERT INTO Artist (ArtistId, Name)
VALUES 
	(276, 'One Republic'),
    (277, 'Journey'),
    (278, 'Aerosmith');

SELECT Name from Artist ORDER BY Name DESC LIMIT 10;

SELECT Name from Artist ORDER BY Name LIMIT 5;

SELECT Name from Artist WHERE Name LIKE 'Black%';

SELECT Name from Artist WHERE Name LIKE '%Black%';

SELECT FirstName, LastName from Employee WHERE City = 'Calgary';

SELECT FirstName, LastName, max(BirthDate) from Employee;

SELECT FirstName, LastName, min(BirthDate) from Employee;

SELECT * from Employee WHERE ReportsTo= 2;

SELECT count(*) from Employee Where City = 'Lethbridge';

SELECT count(*) FROM Invoice WHERE BillingCountry = 'USA'; 

SELECT max(Total) FROM Invoice;

SELECT min(Total) FROM Invoice;

SELECT Total FROM Invoice WHERE Total > 5;

SELECT count(Total) FROM Invoice WHERE Total < 5;

SELECT count(*) FROM Invoice WHERE BillingState In ('CA', 'TX', 'AZ');

SELECT AVG(Total) FROM Invoice;

SELECT SUM(Total) FROM Invoice;