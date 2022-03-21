USE AdventureWorks2019
GO

-- Сделайте выборку всех продуктов StandardCost которых свыше 100.
SELECT *
FROM Production.Product
WHERE StandardCost > 100;

-- Сделайте выборку всех продуктов, наименование которых начинается с ML, 
-- а наименование продукта в столбце ProductNumeber будет начинаться с RM.

SELECT *
FROM Production.Product
WHERE Name LIKE 'ML%' AND ProductNumber LIKE 'RM%'

