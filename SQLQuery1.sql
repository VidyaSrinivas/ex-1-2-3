
SELECT * FROM Sales.Customer
SELECT * FROM Sales.CreditCard
SELECT CreditcardID'Credit Card ID',CardType'Credit Card type',CardNumber'Credit Card number',ExpYear'Expiry year' FROM Sales.CreditCard;
SELECT CustomerID,AccountNumber FROM Sales.Customer;
SELECT * FROM Sales.Customer
WHERE TerritoryID = 4;
SELECT * FROM Sales.SalesOrderDetail
WHERE UnitPrice>2000;
SELECT * FROM Sales.SalesOrderDetail
SELECT SalesOrderID,OrderQty,UnitPrice,LineTotal FROM Sales.SalesOrderDetail;
SELECT * FROM Sales.SalesOrderDetail
WHERE LineTotal  BETWEEN 2000 AND 2100; 

SELECT * FROM Sales.SalesTerritory
SELECT Name,CountryRegionCode,SalesYTD FROM Sales.SalesTerritory
WHERE TerritoryID = 1;

SELECT * FROM Sales.SalesTerritory 
WHERE TerritoryID IN(2,4);

SELECT * FROM Sales.SalesOrderDetail
WHERE ModifiedDate>2004-06-12;

