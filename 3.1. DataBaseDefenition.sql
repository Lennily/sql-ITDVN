-- Перед удалением какой-либо базы, рекомендуется
-- предварительно переключиться на базу master.

USE master;
GO

-- Оператор DROP DATABASE удаляет БД
DROP DATABASE ShopDB;
GO

------------------------------------------------------------------------------------------------------
										/* Создание Базы Данных */
------------------------------------------------------------------------------------------------------

CREATE DATABASE ShopDB
ON
(
	NAME = 'ShopDB',
	FILENAME = 'C:\DBITDVN\ShopDB.mdf',
	SIZE = 10MB,
	MAXSIZE = 100MB,
	FILEGROWTH = 10MB -- параметр приращения БД
)

LOG ON
(
	Name = 'LogShopDB',
	FILENAME = 'C:\DBITDVN\ShopDB.ldf',
	SIZE = 5MB,
	MAXSIZE = 50MB,
	FILEGROWTH = 5MB
)

COLLATE Cyrillic_General_CI_AS -- Задаем кодировку для БД по умолчанию

---------------------------------------------------------------------------------------------------------
--												/*Изменение БД*/
---------------------------------------------------------------------------------------------------------

EXEC sp_helpdb ShopDB

ALTER DATABASE ShopDB -- Оператор ALTER DATABASE изменяет БД
MODIFY FILE			  -- Изменить файл
(
	NAME = 'ShopDB',
	SIZE = 100MB	  -- Изменение размера БД
)
GO

ALTER DATABASE ShopDB -- Оператор ALTER DATABASE изменяет БД
MODIFY FILE			  -- Изменение файла	
(
	NAME = 'ShopDB',
	MAXSIZE = 1000MB,  -- Изменение максимального размера БД
	FILEGROWTH = 20%   -- и параметра увеличения размера БД
	-- Если FILEGROWTH задается в процентах, то процент считается от текущего размера БД (FILEGROWTH = 0,2*SIZE).
)
GO

ALTER DATABASE ShopDB  -- Оператор ALTER DATABASE изменяет БД
MODIFY FILE
(
	NAME = 'ShopDB',
	MAXSIZE = 10MB  -- Измененый максимальный размер не может быть меньше текущего размера БД
)
GO

ALTER DATABASE ShopDB  -- Оператор ALTER DATABASE изменяет БД
MODIFY FILE
(
	NAME = 'ShopDB',
	SIZE = 101MB      -- Не разрешается задавать размер БД меньше или равный текущему.
)
GO

EXEC sp_helpdb ShopDB

