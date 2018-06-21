

--join simplification trust 

select 
	th.ProductID ,
	sum(th.ActualCost ) 
from 
	Production.TransactionHistory  th
inner join 
	Production.Product pd 
	on th.ProductID = pd.ProductID 
group by 
	th.ProductID 


ALTER TABLE Production.TransactionHistory  
nocHECK CONSTRAINT FK_TransactionHistory_Product_ProductID; 


 
ALTER TABLE Production.TransactionHistory   WITH CHECK CHECK CONSTRAINT FK_TransactionHistory_Product_ProductID;
 
-- select is_not_trusted ,  * from sys.foreign_keys where  name = 'FK_TransactionHistory_Product_ProductID' 
--si foreignkeys est checke

