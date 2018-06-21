if object_id ('dbo.pr_parametersniffing ','p') is not null 
 
drop  procedure   dbo.pr_parametersniffing 
go 
create procedure   dbo.pr_parametersniffing 
(
	 @name varchar(300) 
) 
as
begin 
select 
	p.ProductID,
	p.Name ,
	sum(th.quantity) as totlqty 
from 
	production.Product  p
inner join 
	production.TransactionHistory th
	on p.ProductID = th.ProductID 
where
	 p.Name like @name 
group by 
	p.ProductID,
	p.Name
end


set statistics time on 

set statistics io  on 


exec dbo.pr_parametersniffing  @name = 'k%'
go 



 
exec dbo.pr_parametersniffing  @name = '[H-R]%'
 
exec dbo.pr_parametersniffing  @name = '[H-R]%' with recompile
go  

--------------------------------- 

if object_id ('dbo.pr_parametersniffing ','p') is not null 
 
drop  procedure   dbo.pr_parametersniffing 
go 
create procedure   dbo.pr_parametersniffing 
(
	 @name varchar(300) 
) 
as
begin 
declare  @namedummy varchar(300) 

Set @namedummy = @name
select 
	p.ProductID,
	p.Name ,
	sum(th.quantity) as totlqty 
from 
	production.Product  p
inner join 
	production.TransactionHistory th
	on p.ProductID = th.ProductID 
where
	 p.Name like @namedummy 
group by 
	p.ProductID,
	p.Name
end


set statistics time on 

set statistics io  on 


exec dbo.pr_parametersniffing  @name = 'k%'
go 



 
exec dbo.pr_parametersniffing  @name = '[H-R]%'
 
exec dbo.pr_parametersniffing  @name = '[H-R]%' with recompile
go  


 
SELECT COUNT (DISTINCT Name   )*100.0/Count(*) 'Distinct_SalesOrderID (in %)', Name
  FROM  	production.Product 
  group by Name order by 1 desc 

  
SELECT count(*) *100.0/ (select Count(*) from      	production.Product  ) 
  FROM  	production.Product 
  where Name like 'k%'



    
SELECT count(*) *100.0/ (select Count(*) from      	production.Product  ) 
  FROM  	production.Product 
  where Name like '[H-R]%' 

  SELECT Name
  FROM  	production.Product 
  where Name like '[H-R]%' 
 



