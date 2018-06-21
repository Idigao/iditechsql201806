 --constant folding 
select  top 10  *from  Production.Product  where ProductID > (5*2)  



select  top 10  *from  Production.Product  where name  like   substring ( left( char(ascii(char(68) )) ,1)  + '%'  , 1,2)  

