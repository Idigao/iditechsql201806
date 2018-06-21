 --kitchen  sink 

	declare @CustomerId int = null 
	declare @StartOrderDate datetime = '2006-04-01'
    declare @EndOrderDate datetime = null 
    declare @MinTotalDue  int   = 100  

	select 
		SalesOrderID
	from 
		sales.SalesOrderHeader 
	where  (@CustomerID is null or  CustomerID = @CustomerID )  
	and    (@StartOrderDate is null or  OrderDate  >= @StartOrderDate ) 
	and    (@EndOrderDate is null or  OrderDate  <= @EndOrderDate )   
	and    (@MinTotalDue is null or  TotalDue  <= @MinTotalDue )  

























	

	 declare @CustomerId int = null 
	declare @StartOrderDate datetime = '2006-04-01'
    declare @EndOrderDate datetime = null 
    declare @MinTotalDue  int   = 100  


	 DECLARE @sql nvarchar(max) = N'
   	select  SalesOrderID
	from sales.SalesOrderHeader  WHERE 1 = 1'
      + CASE WHEN @CustomerID IS NOT NULL THEN
        N' AND CustomerID = @CustomerID' ELSE N'' END
      + CASE WHEN @StartOrderDate IS NOT NULL THEN
        N' AND OrderDate >= @StartOrderDate' ELSE N'' END
      + CASE WHEN @EndOrderDate IS NOT NULL THEN
        N' AND  OrderDate  <= @EndOrderDate' ELSE N'' END
      + CASE WHEN @MinTotalDue IS NOT NULL THEN
        N' AND  TotalDue  <= @MinTotalDue' ELSE N'' END ;
 
    DECLARE @params nvarchar(max) = N'
      @CustomerID            int,
      @StartOrderDate       datetime,
      @EndOrderDate         datetime,
      @MinTotalDue          int';
 
    --PRINT @sql;
 
    EXEC sys.sp_executesql @sql, @params, 
      @CustomerID,
      @CustomerName,
      @StartOrderDate,
	  @EndOrderDate,
	  @MinTotalDue;
 