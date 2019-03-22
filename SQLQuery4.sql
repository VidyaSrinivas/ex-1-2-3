SELECT * from Sales.SalesTerritory
SELECT * from Sales.SalesPerson
SELECT e.BusinessEntityID ,eph.Name as 'Name of the Territory'
FROM   Sales.SalesPerson e  JOIN Sales.SalesTerritory eph
ON  e.TerritoryID =  eph.TerritoryID 

SELECT e.BusinessEntityID ,e.TerritoryID,eph.Name as 'Name of the Territory'
FROM   Sales.SalesPerson e  JOIN Sales.SalesTerritory eph
ON  e.TerritoryID =  eph.TerritoryID 

SELECT * from Sales.SalesOrderDetail
SELECT * from Sales.SalesOrderHeader
SELECT e.SalesOrderID,e.ProductID ,eph.OrderDate 
FROM Sales.SalesOrderDetail e JOIN Sales.SalesOrderHeader eph
ON e.SalesOrderID = eph.SalesOrderID

SELECT e.BusinessEntityID ,eph.Name as 'Name of the Territory'
FROM   Sales.SalesPerson e FULL OUTER JOIN Sales.SalesTerritory eph
ON  e.TerritoryID =  eph.TerritoryID 

SELECT * from Sales.SalesOrderHeader
SELECT * from Sales.CreditCard
SELECT e.SalesOrderID,ROUND(e.TotalDue,2) as TotalDue,eph.CardType 
FROM  Sales.SalesOrderHeader e JOIN Sales.CreditCard eph
ON e.ModifiedDate = eph.ModifiedDate

SELECT * from Sales.SalesOrderHeader
SELECT * from Sales.SalesTerritory

SELECT e.SalesOrderID,emp.Name,month= datepart(mm,e.ModifiedDate),year= datepart(yy,e.ModifiedDate)
FROM Sales.SalesOrderHeader e JOIN  Sales.SalesTerritory emp
ON e.TerritoryID = emp.TerritoryID 

SELECT * from Sales.SalesOrderDetail
SELECT 'The total amount due for the Sales orderID:',SalesOrderID, 'is ',LineTotal FROM Sales.SalesOrderDetail

SELECT * from Sales.SalesTerritory
SELECT TerritoryID, CountryRegionCode  FROM Sales.SalesTerritory



SELECT * from Sales.SalesOrderHeader
SELECT * from Sales.SalesTerritory

SELECT e.SalesOrderID ,e.OrderDate,p.Name FROM Sales.SalesOrderHeader e JOIN  Sales.SalesTerritory p
ON e.TerritoryID = p.TerritoryID
WHERE  datename(mm,OrderDate)='May' AND datepart(yy,OrderDate)='2011'

SELECT * FROM Sales.CreditCard
SELECT * FROM Sales.PersonCreditCard
SELECT e.Cardtype,p.BusinessEntityID FROM Sales.CreditCard e JOIN Sales.PersonCreditCard p 
ON e.CreditCardID = e.CreditCardID
WHERE Cardtype = Vista









 
