SELECT * from Sales.SalesOrderHeader
SELECT * from Sales.SalesTerritory
SELECT e.SalesOrderID,p.Name FROM Sales.SalesOrderHeader e JOIN Sales.SalesTerritory p
ON e.TerritoryID = p.TerritoryID
WHERE Name = 'Northeast'

SELECT * from Sales.SalesOrderHeader
SELECT SalesOrderID,TotalDue from Sales.SalesOrderHeader WHERE TotalDue 
>(SELECT AVERAGE = avg(TotalDue)from Sales.SalesOrderHeader )



SELECT * from Sales.SalesOrderHeader
SELECT * from Sales.CreditCard
SELECT SalesOrderID ,CreditCardID from Sales.SalesOrderHeader WHERE CreditCardID
IN (SELECT CreditCardID FROM Sales.CreditCard WHERE ExpYear=2007)

SELECT * from Sales.SalesOrderDetail
SELECT * from Sales.SpecialOffer
SELECT *  from Sales.SalesOrderDetail WHERE SalesOrderID
IN(SELECT SalesOrderID from Sales.SpecialOffer WHERE DiscountPct=0.00)

SELECT * from Sales.SalesOrderHeader
SELECT * from Sales.CreditCard
SELECT SalesOrderID from Sales.SalesOrderHeader WHERE CreditCardID IN 
(SELECT CreditCardID from Sales.CreditCard WHERE CardType='SuperiorCard')

SELECT * from Sales.CurrencyRate
SELECT * from Sales.Currency
SELECT  AverageRate   from Sales.CurrencyRate WHERE CurrencyRateDate = '2011-07-01'
AND ToCurrencyCode =  ( SELECT CurrencyCode from Sales.Currency WHERE Name  = 'Australian Dollar')

SELECT * from HumanResources.EmployeeDepartmentHistory
SELECT * from HumanResources.Department
SELECT BusinessEntityID from HumanResources.EmployeeDepartmentHistory WHERE DepartmentID 
IN(SELECT DepartmentID from HumanResources.Department WHERE Name ='Tool Design')