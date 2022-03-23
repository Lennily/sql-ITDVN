-- ����� ��������� �����-���� ����, �������������
-- �������������� ������������� �� ���� master.

USE master;
GO

-- �������� DROP DATABASE ������� ��
DROP DATABASE ShopDB;
GO

------------------------------------------------------------------------------------------------------
										/* �������� ���� ������ */
------------------------------------------------------------------------------------------------------

CREATE DATABASE ShopDB
ON
(
	NAME = 'ShopDB',
	FILENAME = 'C:\DBITDVN\ShopDB.mdf',
	SIZE = 10MB,
	MAXSIZE = 100MB,
	FILEGROWTH = 10MB -- �������� ���������� ��
)

LOG ON
(
	Name = 'LogShopDB',
	FILENAME = 'C:\DBITDVN\ShopDB.ldf',
	SIZE = 5MB,
	MAXSIZE = 50MB,
	FILEGROWTH = 5MB
)

COLLATE Cyrillic_General_CI_AS -- ������ ��������� ��� �� �� ���������

---------------------------------------------------------------------------------------------------------
--												/*��������� ��*/
---------------------------------------------------------------------------------------------------------

EXEC sp_helpdb ShopDB

ALTER DATABASE ShopDB -- �������� ALTER DATABASE �������� ��
MODIFY FILE			  -- �������� ����
(
	NAME = 'ShopDB',
	SIZE = 100MB	  -- ��������� ������� ��
)
GO

ALTER DATABASE ShopDB -- �������� ALTER DATABASE �������� ��
MODIFY FILE			  -- ��������� �����	
(
	NAME = 'ShopDB',
	MAXSIZE = 1000MB,  -- ��������� ������������� ������� ��
	FILEGROWTH = 20%   -- � ��������� ���������� ������� ��
	-- ���� FILEGROWTH �������� � ���������, �� ������� ��������� �� �������� ������� �� (FILEGROWTH = 0,2*SIZE).
)
GO

ALTER DATABASE ShopDB  -- �������� ALTER DATABASE �������� ��
MODIFY FILE
(
	NAME = 'ShopDB',
	MAXSIZE = 10MB  -- ��������� ������������ ������ �� ����� ���� ������ �������� ������� ��
)
GO

ALTER DATABASE ShopDB  -- �������� ALTER DATABASE �������� ��
MODIFY FILE
(
	NAME = 'ShopDB',
	SIZE = 101MB      -- �� ����������� �������� ������ �� ������ ��� ������ ��������.
)
GO

EXEC sp_helpdb ShopDB

