INSERT INTO [Market].[Customer] (Name)
SELECT td.Customer
FROM [import].[TemporaryData] AS td
GROUP BY td.Customer 
