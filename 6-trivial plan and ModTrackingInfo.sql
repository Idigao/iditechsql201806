dbcc traceon(8666) 

--trivial plan 


select p.productid from Production.product as p 
where name = N'Top tube'



select p.productid from Production.product as p 
where name <>  N'Top tube'
