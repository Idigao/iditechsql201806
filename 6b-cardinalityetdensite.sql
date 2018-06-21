
 
DBCC SHOW_STATISTICS  ('Person.Person','idx_person_lastname')  
--Densité = 1 / [nombre de valeurs distinctes dans une colonne] = all density de  DBCC SHOW_STATISTICS  
 
--densite 
SELECT 1.0 / COUNT (DISTINCT LastName   )
  FROM  	Person.Person 
 

  
 
DBCC SHOW_STATISTICS  ('Person.Person','idx_person_lastname')  

--eq rows
 

SELECT COUNT (    LastName  )  , LastName
  FROM  	Person.Person  
  group by LastName

   

 
 --uniqueness column or cardinality  it shows how many percentages of unique values are there for the column 

 
 SELECT COUNT(DISTINCT  BusinessEntityID )*100.0/Count(*) 'Distinct_BusinessEntityID  (in %)' 
FROM person.Person 

 SELECT COUNT(DISTINCT  LastName)*100.0/Count(*) 'Distinct_person (in %)'
FROM person.Person 



 SELECT COUNT(DISTINCT  title )*100.0/Count(*) 'Distinct_title (in %)'
FROM person.Person 



SELECT COUNT (distinct   LastName   )*100.0/Count(*) 'Distinct_LastName (in %)'
  FROM  	Person.Person 
  where LastName = 'Abbas' 
 
 SELECT COUNT (distinct   LastName   )*100.0/Count(*) 'Distinct_label (in %)'
  FROM  	Person.Person 
  where LastName = 'Abercrombie' 
    SELECT COUNT (distinct   LastName   )*100.0/Count(*) 'Distinct_label (in %)'
  FROM  	Person.Person 
  where LastName = 'Adams' 

  --select * from     	Person.Person 
  --where LastName = 'Abbas' 
 
  --select * from     	Person.Person 
  --where LastName = 'Abercrombie' 
  --select * from     	Person.Person
  --where LastName = 'Adams' 
   
   
 --  select count(*)  from     	Person.Person
    
   
  
  