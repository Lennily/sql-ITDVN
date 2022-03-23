USE ShopDB
GO

DROP TABLE Customers;
GO

CREATE TABLE Customers
(
	CustomerNO int IDENTITY NOT NULL PRIMARY KEY,    -- �� ������� CustomerNO ������ ��������� ���� ���� ��� �������������, �.�. ������ ��� ����� ��������� ��������
	CustomerName varchar(25) NOT NULL,
	Address1 varchar(25) NOT NULL,
	City varchar(15) NOT NULL,
	Contact varchar(25) NOT NULL,
	Phone char(12) NOT NULL
)

-------------------------------------------------------------------------------------------------------
--									�������� �������� �����
-------------------------------------------------------------------------------------------------------
-- FOREIGN KEY (������� ����, ����������� �������� �����)

DROP TABLE Orders;
GO

-- �������� ����� ������� �������� ������� � ������������ FOREIGN KEY
-- ������ ��������� � ����� �� ��������� �������� � ������������ �������.

CREATE TABLE Orders
(
	OrderID int IDENTITY NOT NULL PRIMARY KEY,								-- ������� �������� �������, ��� ������� ����� FOREIGN KEY
	CustomerNo int NOT NULL FOREIGN KEY REFERENCES Customers(CustomerNo),	-- ������������ ������� Customers, �� ������� CustomerNo.
	OrderDate date NOT NULL,
	Goods varchar(30) NOT NULL
)

INSERT INTO Customers
(CustomerName, Address1, City, Contact, Phone)
VALUES
('�������� ���� ��������', 'Luganskaya, 25', 'Konotop', 'PetrPetr@mail.ru', '(093)1231212'),
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
(3, GETDATE(), 'Mouse'); -- ������!