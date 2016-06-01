INSERT INTO [Market].[Category] (Name)
SELECT td.Category
FROM [import].[TemporaryData] td
GROUP BY td.Category 