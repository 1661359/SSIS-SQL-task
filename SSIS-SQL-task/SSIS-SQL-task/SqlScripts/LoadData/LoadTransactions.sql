INSERT INTO [Market].[Transaction] (CustomerID, Date, Region)
SELECT c.CustomerID, td.Date, td.Region 
FROM [import].[TemporaryData] AS td
JOIN [Market].[Customer] AS c ON c.Name = td.Customer
GROUP BY c.CustomerID, td.Date, td.Region