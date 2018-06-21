if object_id ('dbo.SalesOrderDetail', 'u') is not null
drop table dbo.SalesOrderDetail
IF EXISTS (SELECT Name FROM sysindexes WHERE Name = 'idx_sod_proudctid') 
DROP INDEX [idx_sod_proudctid] ON [dbo].[SalesOrderDetail]
GO


select* into dbo.SalesOrderDetail
from 
sales.SalesOrderDetail 



select* from dbo.SalesOrderDetail
where SalesOrderID = 43851



create index idx_sod_proudctid
on dbo.SalesOrderDetail (productid)



select* from dbo.SalesOrderDetail
where SalesOrderID = 43851