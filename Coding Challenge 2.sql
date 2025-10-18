create database online_bookstore;
use online_bookstore;

-- Create Books table with Primary Key
CREATE TABLE Books(
BookID INT PRIMARY KEY,
Title VARCHAR(100)
);

-- Create Orders table with Foreign Key referencing Books(BookID)
CREATE TABLE Orders (
OrderID INT PRIMARY KEY,
BookID INT,
FOREIGN KEY (BookID) REFERENCES Books(BookID)
);

Alter table Books add ISBN VARCHAR(50) UNIQUE;
SELECT * FROM bOOKS;

Insert into Books (BookID,Title,ISBN) values (501,"THE TIME","ISBN 978");

Insert into Orders(OrderID,BookID) values (101,501);
select *FROM ORDERS;

-- DELETE removes specific rows--
DELETE FROM Orders
WHERE OrderID = 101;

-- TRUNCATE: removes all rows but keeps the table structure
TRUNCATE TABLE Orders;