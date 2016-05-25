INSERT INTO [Market].[TransactionProduct] (TransactionID, ProductID, Price)
SELECT TransactionID, ProductID, Price
FROM (	SELECT ProductID, product.Name, Region, Date, CustomerID, td.Price 
		FROM [import].[TemporaryData] AS td
		JOIN [Market].[Customer] AS customer ON customer.Name = td.Customer
		JOIN [Market].[Product] AS product ON td.Product = product.Name) AS dc
JOIN [Market].[Transaction] AS t ON t.Date = dc.Date and t.Region = dc.Region AND t.CustomerID = dc.CustomerID

