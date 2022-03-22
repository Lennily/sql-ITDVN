USE AdventureWorks2019
GO

------------------------------------------------------------------------------------------
--						Агрегирование данных. Конструкция GROUP BY.
------------------------------------------------------------------------------------------

-- Производим выборку данных из столбцов SalesOrderId и OrderQty,
-- таблицы Sales.SalesOrderDetail, где значения ячеек столбца SalesOrderId
-- равняются одному из значения ряда (43666, 43660, 43664)

SELECT SalesOrderID, OrderQty
FROM Sales.SalesOrderDetail
WHERE SalesOrderID IN (43666, 43660, 43664);

-- Производим выборку данных из столбца SalesOrderID
-- и возвращаемого значения агрегированной функции SUM по столбцу OrderQty,
-- таблицы Sales.SalesOrderDetail, где значения ячеек столбца SalesOrderID
-- равняется одному из значений ряда (43666, 43660, 43664)
-- при этом производится группировка по значения столбца SalesOrderID.
-- Агрегирование - процесс объединения элементов.

SELECT SalesOrderID, SUM(OrderQty) -- Агрегированная функция SUM()
FROM Sales.SalesOrderDetail
WHERE SalesOrderID IN (43666, 43660, 43664)
GROUP BY SalesOrderID;


SELECT SalesOrderID AS ID, SUM(OrderQty) AS Total  -- После ключевого слова AS задаем псевдоним(alias) для результата функции SUM().
FROM Sales.SalesOrderDetail
WHERE SalesOrderID IN (43666, 43660, 43664)
GROUP BY SalesOrderID; -- Агрегирование данных.

-- Производим выборку возвращаемого значения агрегированной функции COUNT таблицы HumanResources.Employee.
SELECT COUNT(*) AS Emp
FROM HumanResources.Employee; --Агрегированная функция COUNT() выводит количество строк в таблице.

-- Производим выборку данных из столбца ProductID и возвращаемого значения агрегированной функции COUNT
-- таблицы Sales.SalesOrderDetail, при этом производится группировка по значениям столбца ProductID.
SELECT ProductID AS Product, COUNT(*) AS [Count]
FROM Sales.SalesOrderDetail
GROUP BY ProductID;

----------------------------------------------------------------------------------------------------------------------------------------------

-- Производим выборку данных из столбца ProductID и возвращаемого значения агрегированной функции COUNT
-- таблицы Sales.SalesOrderDetail, при этом производится группировка по значениям столбца ProductID.
SELECT ProductID AS Product, COUNT(*) AS [Count]
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING COUNT(*) > 3300; -- HAVING - должен использоваться совместно с GROUP BY (HAVING аналогичен WHERE).
						-- HAVING - условие, применяемое только к группам.
-----------------------------------------------------------------------------------------------------------------------------------------------

-- Ошибка. HAVING должен использоваться совместо с GROUP BY.
SELECT ProductID AS Product
FROM Sales.SalesOrderDetail
HAVING ProductID > 10; -- Неправильное использование HAVING (без GROUP BY).

-- WHERE работает до группировки, а HAVING работает вместе с группировкой.
SELECT SalesOrderId, COUNT (*) AS TOTAL
FROM Sales.SalesOrderDetail
WHERE SalesOrderID IN (43666, 43660, 43664)
GROUP BY SalesOrderID
HAVING COUNT(*) > 5;
