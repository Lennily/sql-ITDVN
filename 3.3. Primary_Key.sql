USE ShopDB
GO

DROP TABLE Customers; -- DROP TABLE - �������� �������� �������
GO

------------------------------------------------------------------------------------------------------------
							   /* �������� ���������� ����� */
------------------------------------------------------------------------------------------------------------

-- PRIMARY KEY (��������� ����, ����������� ���������� �����)

-- �������� ����� �������(-��) � ������������ PRIMARY KEY
-- ���������� ���������� (-��) ������ ������ � �������.

CREATE TABLE Customers
(	
	CustomerNO int NOT NULL PRIMARY KEY,    -- �� ������� CustomerNO ������ ��������� ����
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
(1, '�������� ���� ��������', 'Luganskaya, 25', 'Konotop', 'PetrPetr@mail.ru', '(093)1231212'),
(2, 'Ivanchenko Ivan Ivanovich', 'Piterskaya, 23', 'Chernigov', 'Ivanchenko@gmail.com', '(095)1223546');
GO

-- ������� �������� ������������.
INSERT INTO Customers
(CustomerNO, CustomerName, Address1, City, Contact, Phone)
VALUES
(1, '�������� ���� ��������', '��������, 25', '�������', 'SemPetr@mail.ru', '(093)5831225'); -- ������!
GO

SELECT * FROM Customers;

DROP TABLE Customers; -- DROP TABLE - �������� �������� �������
GO

-- ���� ��������� ���� ������� �� ���� � ����� ��������, 
-- ��� �������� ��������� ��������� ������.
-- ������� �������� ������ ��������� ���� � ������� �������� � ������.
-- ��������� ���� � ������� ����� ���� ������ ���� (������� ��� ���������).

CREATE TABLE Customers
(	
	CustomerNO int NOT NULL,
	CustomerName varchar(25) NOT NULL,
	Address1 varchar(25) NOT NULL,
	City varchar(15) NOT NULL,
	Contact varchar(25) NOT NULL,
	Phone char(12) NOT NULL,
	PRIMARY KEY (CustomerNo, CustomerName)  -- ������ ��������� ��������� ���� �� �������� CustomerNo, CustomerName
)
GO

INSERT INTO Customers
(CustomerNO, CustomerName, Address1, City, Contact, Phone)
VALUES
(1, '�������� ���� ��������', 'Luganskaya, 25', 'Konotop', 'PetrPetr@mail.ru', '(093)1231212'),
(2, 'Ivanchenko Ivan Ivanovich', 'Piterskaya, 23', 'Chernigov', 'Ivanchenko@gmail.com', '(095)1223546');
GO

INSERT INTO Customers
(CustomerNO, CustomerName, Address1, City, Contact, Phone)
VALUES
(1, '������� ���� ��������', '��������, 25', '�������', 'SemPetr@mail.ru', '(093)5831225'); -- ������!
GO

INSERT INTO Customers
(CustomerNO, CustomerName, Address1, City, Contact, Phone)
VALUES
(2, 'Ivanchenko Ivan Ivanovich', '������, 23', 'Chernigov', 'IvanchenkIvo@gmail.com', '(095)5523546'); -- ������!
GO

SELECT * FROM Customers;

DROP TABLE Customers; -- DROP TABLE - �������� �������� �������
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

-- �������� ������� Customers, ����� ����������� ���������� ����� �� ������� CustomerNo
ALTER TABLE Customers
ADD CONSTRAINT PK_Customers
PRIMARY KEY (CustomerNo)

INSERT INTO Customers
(CustomerName, Address1, City, Contact, Phone)
VALUES
('�������� ���� ��������', 'Luganskaya, 25', 'Konotop', 'PetrPetr@mail.ru', '(093)1231212'),
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
ADD -- ��� ����������� �� �������� ������������.
PRIMARY KEY (CustomerNo, Address1)


INSERT INTO Customers
(CustomerNo, CustomerName, Address1, City, Contact, Phone)
VALUES
(1, '�������� ���� ��������', 'Luganskaya, 25', 'Konotop', 'PetrPetr@mail.ru', '(093)1231212'),
(2, 'Ivanchenko Ivan Ivanovich', 'Piterskaya, 23', 'Chernigov', 'Ivanchenko@gmail.com', '(095)1223546');
GO

INSERT INTO Customers
(CustomerNO, CustomerName, Address1, City, Contact, Phone)
VALUES
(1, '������� ���� ��������', '��������, 25', '�������', 'SemPetr@mail.ru', '(093)5831225');
GO

INSERT INTO Customers
(CustomerNo, CustomerName, Address1, City, Contact, Phone)
VALUES
(2, 'Ivanchenko Ivan Ivanovich', '������, 23', '����', 'Ivanchenko@gmail.com', '(095)1223546');
GO

SELECT * FROM Customers;
