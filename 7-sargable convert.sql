
	SELECT ProductID 
FROM Production.TransactionHistory  
WHERE CONVERT(CHAR(10),TransactionDate,121)  = '2013-07-31'






























	SELECT ProductID 
FROM Production.TransactionHistory  
WHERE TransactionDate = CAST('2013-07-31' AS datetime2)