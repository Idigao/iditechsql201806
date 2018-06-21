create   FUNCTION dbo.getcompletename(@BusinessEntityID  INT) 
       RETURNS varchar(150) 
AS 
BEGIN; 
  DECLARE @Result varchar(150) ; 
    
  select  @Result = isnull(FirstName, '') +' '+  isnull(LastName,'')  from Person.person where BusinessEntityID = @BusinessEntityID
  RETURN @Result; 
END; 
GO 

CREATE FUNCTION dbo.getcompletename_tbl (@BusinessEntityID INT)
RETURNS TABLE 
AS
RETURN
SELECT  FirstName +' '+  LastName  as completename from Person.person where BusinessEntityID = @BusinessEntityID
GO
 
DBCC DROPCLEANBUFFERS WITH NO_INFOMSGS;
SET NOCOUNT ON;
SET STATISTICS TIME ON; 


select dbo.getcompletename(BusinessEntityID) , adr.AddressLine1 , adr.AddressLine1 , city  , BusinessEntityID
from Person.[BusinessEntityAddress] bea
inner join  [Person].[Address] adr 
on bea.AddressID = adr.AddressID 
where dbo.getcompletename(BusinessEntityID)  is not null
order by 1


select t.completename  , adr.AddressLine1 , adr.AddressLine1 , city  
from Person.[BusinessEntityAddress] bea 
inner join  [Person].[Address] adr 
on bea.AddressID = adr.AddressID 
cross apply  dbo.getcompletename_tbl (BusinessEntityID) t
order by 1

SET STATISTICS TIME OFF;
GO