USE ShopDB
GO

DROP TABLE Customers;
GO

CREATE TABLE Customers
(
	CustomerNO int IDENTITY NOT NULL PRIMARY KEY,    -- На столбце CustomerNO задаем первичный ключ плюс это автоинкремент, т.е. сервак сам будет заполнять значение
	CustomerName varchar(25) NOT NULL,
	Address1 varchar(25) NOT NULL,
	City varchar(15) NOT NULL,
	Contact varchar(25) NOT NULL,
	Phone char(12) NOT NULL
)

-------------------------------------------------------------------------------------------------------
--									Создание внешнего ключа
-------------------------------------------------------------------------------------------------------
-- FOREIGN KEY (внешний ключ, ограничение внешнего ключа)

DROP TABLE Orders;
GO

-- Значения ячеек столбца дочерней таблицы с ограничением FOREIGN KEY
-- должно совпадать с одним из имеющихся значений в родительской таблице.

CREATE TABLE Orders
(
	OrderID int IDENTITY NOT NULL PRIMARY KEY,								-- Столбец дочерней таблицы, для которой задан FOREIGN KEY
	CustomerNo int NOT NULL FOREIGN KEY REFERENCES Customers(CustomerNo),	-- Родительская таблица Customers, ее столбец CustomerNo.
	OrderDate date NOT NULL,
	Goods varchar(30) NOT NULL
)

INSERT INTO Customers
(CustomerName, Address1, City, Contact, Phone)
VALUES
('Петренко Петр Иванович', 'Luganskaya, 25', 'Konotop', 'PetrPetr@mail.ru', '(093)1231212'),
('Ivanchenko Ivan Ivanovich', 'Piterskaya, 23', 'Chernigov', 'Ivanchenko@gmail.com', '(095)1223546');
GO

INSERT INTO Orders
(CustomerNo, OrderDate, Goods)
VALUES
(1, GETDATE(), 'Keyboard'),
(2, GETDATE(), 'Mouse'),
(2, GETDATE(), 'Webcam'),
(1, GETDATE(), 'Mouse');

SELECT CustomerNo, CustomerName, Address1, City FROM Customers;
SELECT * FROM Orders;

INSERT INTO Orders
(CustomerNo, OrderDate, Goods)
VALUES
(3, GETDATE(), 'Mouse'); -- Ошибка!