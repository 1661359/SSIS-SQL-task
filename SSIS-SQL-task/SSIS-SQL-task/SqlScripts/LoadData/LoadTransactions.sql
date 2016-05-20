INSERT INTO [dbo].[Transaction] (CustomerID, Date, Region)
SELECT c.CustomerID, td.Date, td.Region 
FROM [dbo].[Temporary Destination] AS td
JOIN [dbo].[Customer] AS c
ON c.Name = td.Customer
GROUP BY td.TransactionId, c.CustomerID, td.Date, td.Region