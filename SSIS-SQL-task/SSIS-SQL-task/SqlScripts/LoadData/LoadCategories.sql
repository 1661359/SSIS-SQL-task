INSERT INTO [Category] (Name)
SELECT td.Category
FROM [Temporary Destination] as td
GROUP BY td.Category 