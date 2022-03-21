CREATE DATABASE HomeWork
ON
(
NAME = 'HomeWork',
FILENAME = 'C:\DBITDVN\HomeWork.mdf',
SIZE = 10MB,
MAXSIZE = 100MB,
FILEGROWTH = 10MB
)
LOG ON
(
NAME = 'LogHomeWork',
FILENAME = 'C:\DBITDVN\HomeWork.ldf',
SIZE = 5MB,
MAXSIZE = 50MB,
FILEGROWTH = 5MB
)

COLLATE Cyrillic_General_CI_AS

USE HomeWork
GO

DROP TABLE Product;

CREATE TABLE Product
(
	ProductId smallint IDENTITY NOT NULL,
	Name VarChar(20) NOT NULL,
	ProductNumber char(10) NOT NULL,
	Cost money NOT NULL,
	[Count] integer NOT NULL,
	SellStartDate date NOT NULL
)
GO

-- ALTER TABLE [dbo].[Product] DROP COLUMN ProductNumber -- удалить столбец. Я удалила ProductNumber, т.к. сделала инт, а нужно было чар.

INSERT Product
VALUES
('Корона', 'AK-54818', '$5', '50', '08/15/2011'),
('Милка', 'АМ-51122', '$6.1', '50', '07/15/2011'),
('Аленка', 'АА-52211', '$2.5', '20', '06/15/2011'),
('Snickers', 'BS-32118', '$2.8', '50', '08/15/2011'),
('Snickers', 'BSL-3818', '$5', '100', '08/20/2011'),
('Bounty', 'BB-38218', '$3', '100', '08/01/2011'),
('Nuts', 'BN-37818', '$3', '100', '08/21/2011'),
('Mars', 'BM-3618', '$2.5', '50', '08/24/2011'),
('Свиточ', 'AS-54181', '$5', '100', '08/12/2011'),
('Свиточ', 'AS-54182', '$5', '100', '08/12/2011');
GO

Select * From Product

-- Сделайте выборку для продукции количество которой больше 59 шт.
Select * from Product
WHERE [Count] > 59;

-- Сделайте выборку для продукции, цена которой больше 3$ и поступили на продажу с 20.08.2011.
SELECT * FROM Product
WHERE Cost > 3.00 and SellStartDate >= '08/20/2011'

-- 
UPDATE Product
SET Cost = '5.25' 
WHERE Name = 'Свиточ';

select * from Product

------------------------------------------------------------------------------------------------------
CREATE TABLE Customers
(
CustometrNo int NULL,
FName nvarchar(15) NULL,
LName nvarchar(15) NULL,
MName nvarchar(15) NOT NULL,
Address1 nvarchar(50) NULL,
Address2 nvarchar(50) NOT NULL,
City nchar(10) NOT NULL,
Phone char(12) NOT NULL,
DateInSystem date NOT NULL
)
GO