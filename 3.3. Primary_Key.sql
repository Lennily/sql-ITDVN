USE ShopDB
GO

DROP TABLE Customers; -- DROP TABLE - оператор удаления таблицы
GO

------------------------------------------------------------------------------------------------------------
							   /* Создание первичного ключа */
------------------------------------------------------------------------------------------------------------

-- PRIMARY KEY (Первичный ключ, ограничение первичного ключа)

-- Значения ячеек столбца(-ов) с ограничением PRIMARY KEY
-- однозначно определяет (-ют) каждую строку в таблице.

CREATE TABLE Customers
(	
	CustomerNO int NOT NULL PRIMARY KEY,    -- На столбце CustomerNO задаем первичный ключ
	CustomerName varchar(25) NOT NULL,
	Address1 varchar(25) NOT NULL,
	City varchar(15) NOT NULL,
	Contact varchar(25) NOT NULL,
	Phone char(12) NOT NULL
)
GO

INSERT INTO Customers
(CustomerNO, CustomerName, Address1, City, Contact, Phone)
VALUES
(1, 'Петренко Петр Иванович', 'Luganskaya, 25', 'Konotop', 'PetrPetr@mail.ru', '(093)1231212'),
(2, 'Ivanchenko Ivan Ivanovich', 'Piterskaya, 23', 'Chernigov', 'Ivanchenko@gmail.com', '(095)1223546');
GO

-- Попытка нарушить уникальность.
INSERT INTO Customers
(CustomerNO, CustomerName, Address1, City, Contact, Phone)
VALUES
(1, 'Сидорово Петр Иванович', 'Драйзера, 25', 'Харьков', 'SemPetr@mail.ru', '(093)5831225'); -- Ошибка!
GO

SELECT * FROM Customers;

DROP TABLE Customers; -- DROP TABLE - оператор удаления таблицы
GO

-- Если первичный ключ состоит из двух и более столбцов, 
-- его называют составным первичным ключом.
-- Попытка вставить второй Первичный ключ в таблицу приводит к ошибке.
-- Первичный ключ в таблице может быть только один (простой или составной).

CREATE TABLE Customers
(	
	CustomerNO int NOT NULL,
	CustomerName varchar(25) NOT NULL,
	Address1 varchar(25) NOT NULL,
	City varchar(15) NOT NULL,
	Contact varchar(25) NOT NULL,
	Phone char(12) NOT NULL,
	PRIMARY KEY (CustomerNo, CustomerName)  -- задаем составной первичный ключ на столбцах CustomerNo, CustomerName
)
GO

INSERT INTO Customers
(CustomerNO, CustomerName, Address1, City, Contact, Phone)
VALUES
(1, 'Петренко Петр Иванович', 'Luganskaya, 25', 'Konotop', 'PetrPetr@mail.ru', '(093)1231212'),
(2, 'Ivanchenko Ivan Ivanovich', 'Piterskaya, 23', 'Chernigov', 'Ivanchenko@gmail.com', '(095)1223546');
GO

INSERT INTO Customers
(CustomerNO, CustomerName, Address1, City, Contact, Phone)
VALUES
(1, 'Сидоров Петр Иванович', 'Драйзера, 25', 'Харьков', 'SemPetr@mail.ru', '(093)5831225'); -- Ошибка!
GO

INSERT INTO Customers
(CustomerNO, CustomerName, Address1, City, Contact, Phone)
VALUES
(2, 'Ivanchenko Ivan Ivanovich', 'Ленина, 23', 'Chernigov', 'IvanchenkIvo@gmail.com', '(095)5523546'); -- Ошибка!
GO

SELECT * FROM Customers;

DROP TABLE Customers; -- DROP TABLE - оператор удаления таблицы
GO

CREATE TABLE Customers
(	
	CustomerNO int IDENTITY NOT NULL,
	CustomerName varchar(25) NOT NULL,
	Address1 varchar(25) NOT NULL,
	City varchar(15) NOT NULL,
	Contact varchar(25) NOT NULL,
	Phone char(12)
)
GO

-- Изменяем таблицу Customers, задав ограничение первичного ключа на столбце CustomerNo
ALTER TABLE Customers
ADD CONSTRAINT PK_Customers
PRIMARY KEY (CustomerNo)

INSERT INTO Customers
(CustomerName, Address1, City, Contact, Phone)
VALUES
('Петренко Петр Иванович', 'Luganskaya, 25', 'Konotop', 'PetrPetr@mail.ru', '(093)1231212'),
('Ivanchenko Ivan Ivanovich', 'Piterskaya, 23', 'Chernigov', 'Ivanchenko@gmail.com', '(095)1223546');
GO

SELECT * FROM Customers;

DROP TABLE Customers;
GO

CREATE TABLE Customers
(	
	CustomerNO int NOT NULL,
	CustomerName varchar(25) NOT NULL,
	Address1 varchar(25) NOT NULL,
	City varchar(15) NOT NULL,
	Contact varchar(25) NOT NULL,
	Phone char(12)
)
GO

ALTER TABLE Customers
ADD -- Имя ограничения не является обязательным.
PRIMARY KEY (CustomerNo, Address1)


INSERT INTO Customers
(CustomerNo, CustomerName, Address1, City, Contact, Phone)
VALUES
(1, 'Петренко Петр Иванович', 'Luganskaya, 25', 'Konotop', 'PetrPetr@mail.ru', '(093)1231212'),
(2, 'Ivanchenko Ivan Ivanovich', 'Piterskaya, 23', 'Chernigov', 'Ivanchenko@gmail.com', '(095)1223546');
GO

INSERT INTO Customers
(CustomerNO, CustomerName, Address1, City, Contact, Phone)
VALUES
(1, 'Сидоров Петр Иванович', 'Драйзера, 25', 'Харьков', 'SemPetr@mail.ru', '(093)5831225');
GO

INSERT INTO Customers
(CustomerNo, CustomerName, Address1, City, Contact, Phone)
VALUES
(2, 'Ivanchenko Ivan Ivanovich', 'Янгеля, 23', 'Киев', 'Ivanchenko@gmail.com', '(095)1223546');
GO

SELECT * FROM Customers;
