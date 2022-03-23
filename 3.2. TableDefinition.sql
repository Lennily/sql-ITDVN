USE ShopDB
GO

------------------------------------------------------------------------------------------------------------
							          /* Создание таблицы */
------------------------------------------------------------------------------------------------------------

DROP TABLE Customers; -- DROP TABLE - оператор удаления таблицы
GO

CREATE TABLE Customers
(	-- Ключевое слово IDENTITY создает столбец идентификации. (seed = 1, step = 2)
	CustomerNo int IDENTITY(1, 2) NOT NULL,
	CustomerName varchar(25) NOT NULL,
	Address1 varchar(25) NOT NULL,
	Address2 varchar(25) DEFAULT 'Unknown', -- Ключевое слово DEFAULT присваивает значение по умолчанию.
	City varchar(15) NOT NULL,
	[State] char(2) NOT NULL,
	Zip varchar(10) NOT NULL,
	Contact varchar(25) NOT NULL,
	Phone char(10) NOT NULL,
	FedIDNo varchar(10) NOT NULL,
	DateInSystem smalldatetime NOT NULL
)
GO

DROP TABLE Customers; -- DROP TABLE - оператор удаления таблицы
GO

CREATE TABLE Customers
(	-- Ключевое слово IDENTITY создает столбец идентификации. (seed = 1, step = 2)
	CustomerNo int IDENTITY(1, 2) NOT NULL,
	CustomerName varchar(25) NOT NULL,
	Address1 varchar(25) NOT NULL,
	Address2 varchar(25) DEFAULT 'Unknown', -- Ключевое слово DEFAULT присваивает значение по умолчанию.
	City varchar(15) NOT NULL,
	[State] char(2) NOT NULL,
	Zip varchar(10) NOT NULL,
	Contact varchar(25) NOT NULL,
	Phone char(10) NOT NULL,
	FedIDNo varchar(10) NOT NULL,
	DateInSystem smalldatetime NOT NULL
)
WITH (DATA_COMPRESSION = ROW); -- таблица со сжатием по строкам (Не работает в SQL Express)
GO

INSERT INTO Customers
(CustomerName, Address1, City, [State], Zip, Contact, Phone, FedIDNo, DateInSystem)
VALUES
('Jeremy', 'new str', 'NewCity', 'ds', 'newZip', 'newContact', '0567878932', 'newIDNO', GETDATE());
GO

SELECT * FROM Customers;
GO

------------------------------------------------------------------------------------------------------------
							          /* Изменение таблицы */
------------------------------------------------------------------------------------------------------------

-- Изменяем таблицу Customers,
-- добавив столбец NewFild

ALTER TABLE Customers -- Оператор ALTER TABLE изменяет таблицу 
ADD					  -- ADD - добавляет	
NewFild int NULL	  -- столбец.
GO

SELECT * FROM Customers;
GO

-- Изменяем таблицу Customers,
-- добавив столбец NewFild

ALTER TABLE Customers -- Оператор ALTER TABLE изменяет таблицу 
DROP COLUMN			  -- DROP COLUMN - удаляет
NewFild				  -- столбец.
GO

SELECT * FROM Customers;
GO

ALTER TABLE Customers			-- Оператор ALTER TABLE изменяет таблицу 
ADD								-- ADD - добавляет	
NewFild2 varchar(10) NOT NULL   -- столбец.
-- Невозможно добавить колонку с ограничением NOT NULL, не установив значение по умолчанию.
GO

ALTER TABLE Customers			-- Оператор ALTER TABLE изменяет таблицу 
ADD								-- ADD - добавляет	
NewFild2 varchar(10) NOT NULL   -- столбец.
DEFAULT 'Unknown' 
GO

SELECT * FROM Customers;
GO