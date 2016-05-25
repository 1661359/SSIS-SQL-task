INSERT INTO [Market].[Category] (Name)
SELECT td.Category
FROM [import].[TemporaryData] AS td
GROUP BY td.Category 