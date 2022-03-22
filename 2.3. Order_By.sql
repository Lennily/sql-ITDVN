USE AdventureWorks2019
GO

SELECT BusinessEntityID, FirstName, LastName, MiddleName, ModifiedDate FROM Person.Person

------------------------------------------------------------------------------------------
--						����������� ORDER BY - ����������� ��...
------------------------------------------------------------------------------------------

-- ���������� ������� ������ �� �������� BusinessEntityID, FirstName, LastName, MiddleName � ModifiedDate,
-- ��� ������ ����������� �� ������� FirstName, ������� Person.Person.
SELECT BusinessEntityID, FirstName, LastName, MiddleName, ModifiedDate
FROM Person.Person
ORDER BY FirstName; -- ����������� �� �����.

-- ���������� ������� ������ �� �������� BusinessEntityID, FirstName, LastName, MiddleName � ModifiedDate,
-- ��� ������ ����������� �� ������� FirstName, ������� Person.Person.
SELECT BusinessEntityID, FirstName, LastName, MiddleName, ModifiedDate
FROM Person.Person
ORDER BY ModifiedDate; -- ����������� �� ModifiedDate.


-- ���������� ������� ������ �� �������� BusinessEntityID, FirstName, LastName, MiddleName � ModifiedDate,
-- ��� ������ ����������� �� ������� FirstName, ������� Person.Person.
SELECT BusinessEntityID, FirstName, LastName, MiddleName, ModifiedDate
FROM Person.Person
ORDER BY FirstName, LastName; -- ����������� �� ����� � �������.

-- ���������� ������� ������ �� �������� BusinessEntityID, FirstName, LastName, MiddleName � ModifiedDate,
-- ��� ������ ����������� �� ������� FirstName, ������� Person.Person.
SELECT BusinessEntityID, FirstName, LastName, MiddleName, ModifiedDate
FROM Person.Person
ORDER BY FirstName ASC; -- ���������� �� �����������. ASC - �� ���������.

-- ���������� ������� ������ �� �������� BusinessEntityID, FirstName, LastName, MiddleName � ModifiedDate,
-- ��� ������ ����������� � ������� ��������, �� ������� FirstName, ������� Person.Contact.
SELECT BusinessEntityID, FirstName, LastName, MiddleName, ModifiedDate
FROM Person.Person
ORDER BY FirstName DESC; -- ���������� �� ��������.