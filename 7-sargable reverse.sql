
  select
	 p.ProductID 
from
	production.Product p  
where
	 p.name  like N'%top' 


































alter table production.Product  add  namereverse as reverse(name) 

CREATE NONCLUSTERED INDEX idx_Production_Product_reverse ON [Production].[Product]
(
	[namereverse] ASC
) 

declare @name  nvarchar(50) 
set @name  =  N'%top' 
  select
	 p.ProductID 
from
	production.Product p  
where
	 p.namereverse   like reverse(@name) 
