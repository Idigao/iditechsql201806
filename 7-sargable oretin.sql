SET STATISTICS IO ON
GO
SELECT TOP (1000) [CustomerID]
,[PersonID]
,[StoreID]
,[AccountNumber]
FROM Sales.[Customer]
WHERE StoreID IN (934,1028,642,932,1026)
GO
SELECT TOP (1000) [CustomerID]
,[PersonID]
,[StoreID]
,[AccountNumber]
FROM [Sales].[Customer]
WHERE StoreID = 934 OR StoreID = 1028
OR StoreID = 642 OR StoreID = 932 OR StoreID = 1026
GO