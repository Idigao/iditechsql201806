if object_id ('dbo.Person', 'u') is not null
drop table dbo.Person

CREATE UNIQUE NONCLUSTERED INDEX [AK_Person_rowguid] ON [Person].[Person]
(
	[rowguid] ASC
)
  WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = ON, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO 


-- Table scan 
select  
	* 
	into dbo.Person
from 
	Person.Person   
 
 select  
	BusinessEntityID,
	FirstName,
	LastName
from 
	dbo.Person  
where
	BusinessEntityID = 12266
 


-- cluster index seek 
select  
	BusinessEntityID,
	FirstName,
	LastName
from 
	person.Person  
where
	BusinessEntityID = 12266
 
 


-- cluster index scan   
select  
	BusinessEntityID,
	FirstName,
	LastName
from 
	person.Person  
where
	BusinessEntityID <> 12266


 
-- cluster index seek  
select  
	FirstName,
	LastName,
	rowguid
from 
	person.Person  
where
	rowguid = '92C4279F-1207-48A3-8448-4636514EB7E2'







CREATE UNIQUE NONCLUSTERED INDEX [AK_Person_rowguid] ON [Person].[Person]
(
	[rowguid] ASC
)
INCLUDE ( 	[FirstName],
	[LastName]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = ON, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO

 
-- cluster index seek  index couvrant 
select  
	FirstName,
	LastName,
	rowguid
from 
	person.Person  
where
	rowguid = '92C4279F-1207-48A3-8448-4636514EB7E2'

 



 -- sort 
select  
	FirstName,
	LastName,
	BusinessEntityID
from 
	person.Person  
where
	BusinessEntityID > 16000 
 --order by firstname  