USE AdventureWorks2019
GO

-- �������� ������� ���� ��������� StandardCost ������� ����� 100.
SELECT *
FROM Production.Product
WHERE StandardCost > 100;

-- �������� ������� ���� ���������, ������������ ������� ���������� � ML, 
-- � ������������ �������� � ������� ProductNumeber ����� ���������� � RM.

SELECT *
FROM Production.Product
WHERE Name LIKE 'ML%' AND ProductNumber LIKE 'RM%'

