dbcc traceon (3604) 
--contradiction 
select * from  HumanResources .Employee where VacationHours > 260
option (recompile , querytraceon 8606)  
exec sp_helpconstraint 'HumanResources .Employee' 
 
select * from  HumanResources .Employee where VacationHours >  60 