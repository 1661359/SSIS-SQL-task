INSERT INTO [Market].[Customer] (Name)
SELECT td.Customer
FROM [import].[TemporaryData] td
GROUP BY td.Customer 
