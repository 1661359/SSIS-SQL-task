INSERT INTO [Customer] (Name)
SELECT td.Customer
FROM [Temporary Destination] as td
GROUP BY td.Customer 