DECLARE @ProductWithLastDate TABLE (
	Product nvarchar(200),
	LastDate datetime);

INSERT INTO @ProductWithLastDate
SELECT Product, max(Date) AS LastDate
FROM [import].[TemporaryData] td1 
GROUP BY Product;

INSERT INTO [Market].[Product] (Name, Price, CategoryID)
SELECT pd.Product, max(td.Price) AS Price, max(c.CategoryID) AS CategoryID
FROM @ProductWithLastDate pd
JOIN [import].[TemporaryData] td ON pd.Product = td.Product AND td.Date = pd.LastDate
JOIN [Market].[Category] AS c ON c.Name = td.Category
GROUP BY pd.Product