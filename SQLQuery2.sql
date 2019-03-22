
SELECT * FROM Sales.SalesOrderHeader
SELECT SalesOrderID 'OrderID',TotalDue FROM Sales.SalesOrderHeader
ORDER BY  TotalDue DESC;

SELECT * FROM Sales.SalesOrderHeader
SELECT SalesOrderID 'OrderID',TaxAmt FROM Sales.SalesOrderHeader
WHERE TaxAmt<2000
ORDER BY TaxAmt;
SELECT * FROM Sales.SalesOrderDetail

SELECT SalesOrderID,LineTotal  FROM Sales.SalesOrderDetail
ORDER BY SalesOrderID,LineTotal
SELECT * FROM Sales.SalesTerritory
WHERE  Name LIKE'N%'

SELECT * FROM Sales.Currency
WHERE Name LIKE '%Dollar%'
SELECT * FROM Sales.SalesPerson
SELECT BusinessEntityID,TerritoryID,SalesQuota FROM Sales.SalesPerson

SELECT * FROM Sales.SalesPerson
SELECT  TOP 3* FROM Sales.SalesPerson ORDER BY Bonus DESC;

SELECT * FROM Sales.Store
WHERE Name LIKE '%Bike%';

SELECT * FROM Sales.CreditCard
SELECT DISTINCT CardType  FROM Sales.CreditCard

SELECT BusinessEntityID,LoginID,JobTitle  FROM HumanResources.Employee ORDER BY BusinessEntityID 
OFFSET 5  ROWS FETCH NEXT 10 ROWS ONLY;


SELECT 'MAX RATE' = max(UnitPrice)FROM Sales.SalesOrderDetail
SELECT 'MIN RATE' = min(UnitPrice)FROM Sales.SalesOrderDetail
SELECT 'AVERAGE' = avg(UnitPrice)FROM Sales.SalesOrderDetail

SELECT 'Total Value' = sum(UnitPrice)FROM Sales.SalesOrderDetail

  SELECT * FROM Sales.SalesOrderHeader
  SELECT SalesOrderID,TotalDue,DueDate FROM Sales.SalesOrderHeader
  WHERE TotalDue FROM Sales.SalesOrderHeader
  
  SELECT datepart(yy,'2011-05-31')
  