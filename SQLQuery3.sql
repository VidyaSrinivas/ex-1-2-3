SELECT * FROM Sales.SalesOrderHeader
SELECT SubTotal,OrderDate FROM Sales.SalesOrderHeader
GROUP BY ROLLUP(SubTotal,OrderDate)
SELECT * FROM Sales.SalesOrderDetail
SELECT ProductID,LineTotal  FROM Sales.SalesOrderDetail
PIVOT (sum(LineTotal)FOR ProductID IN(774,777) )as pvt


SELECT * FROM Sales.SalesOrderDetail
SELECT MAXIMUM = max(LineTotal),MINIMUM = min(LineTotal)FROM Sales.SalesOrderDetail
WHERE LineTotal>5000 GROUP BY SalesOrderID

SELECT * FROM Sales.SalesOrderDetail
SELECT SalesOrderID ,AVERAGEVALUE = avg(LineTotal) FROM Sales.SalesOrderDetail
WHERE LineTotal >5000 GROUP BY SalesOrderID


SELECT * FROM Sales.SalesOrderHeader
SELECT SalesOrderID  'Order Number',TotalDue,OrderDate  'Dayof order' FROM Sales.SalesOrderHeader

SELECT SalesOrderID,OrderQty,UnitPrice  FROM Sales.SalesOrderDetail
GROUP BY
GROUPING SETS(
(UnitPrice, SalesOrderID,OrderQty),
(SalesOrderID),
(UnitPrice),
(OrderQty)
)
SELECT * FROM Production.Location
SELECT HireDate From HumanResources.Employee
SELECT  BusinessEntityID,month=datepart(mm,HireDate),year=datepart(yy,HireDate)  From HumanResources.Employee

SELECT LocationID,Name,CostRate FROM  Production.Location
WHERE CostRate>12
ORDER BY CostRate DESC 

SELECT * FROM Production.Product
SELECT Name'Poroduct Name',ListPrice'Price' FROM Production.Product
WHERE ListPrice BETWEEN 360 AND 499
