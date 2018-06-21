/****** Script for SelectTopNRows command from SSMS  ******/
SELECT  [ProductID]
      ,[Name],
	  ProductNumber 
  FROM [AdventureWorks2012].[Production].[Product]  where ProductNumber = 'AR-5381' 
  or name = 'ML Crankarm'


































  --------------


  /****** Script for SelectTopNRows command from SSMS  ******/
SELECT  [ProductID]
      ,[Name],
	  ProductNumber 
  FROM [AdventureWorks2012].[Production].[Product]  where ProductNumber = 'AR-5381' 
  union 
  SELECT  [ProductID]
      ,[Name],
	  ProductNumber 
  FROM [AdventureWorks2012].[Production].[Product]  where  
    name = 'ML Crankarm'