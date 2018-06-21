
SELECT ProductID 
FROM Production.TransactionHistory  
WHERE DAY(TransactionDate)  = 31
and month(TransactionDate)  = 7
and year (TransactionDate)  = 2013 






























SELECT ProductID l
FROM Production.TransactionHistory  
WHERE 
  TransactionDate  >= '2013-07-30 00:00:00' 
  AND TransactionDate < '2013-08-01 00:00:00'