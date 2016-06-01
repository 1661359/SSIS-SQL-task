INSERT INTO [Market].[Transaction] (CustomerID, Date, Region)
SELECT c.CustomerID, td.Date, td.Region 
FROM [import].[TemporaryData] td
JOIN [Market].[Customer] c ON c.Name = td.Customer
GROUP BY c.CustomerID, td.Date, td.Region