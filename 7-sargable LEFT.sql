/****** Script for SelectTopNRows command from SSMS  ******/
SELECT  [ProductID]
      ,[Name],
	  ProductNumber 
  FROM [AdventureWorks2012].[Production].[Product]  where LEFT(name,1)='B' 




























  --------------

  /****** Script for SelectTopNRows command from SSMS  ******/
SELECT  [ProductID]
      ,[Name],
	  ProductNumber 
  FROM [AdventureWorks2012].[Production].[Product]   where  name like 'B%'  

