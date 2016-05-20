insert into [dbo].[Product] (Name, Price, CategoryID)
select temporaryData.Product, temporaryData.Price, category.CategoryID
from (select Product, max(td.Date) as LastDate
			from [TemporaryData] as td
			group by td.Product) as productWithLastDate
		join [TemporaryData] as temporaryData
		on temporaryData.Product = productWithLastDate.Product and temporaryData.Date = productWithLastDate.LastDate 
join [Category] as category
on category.Name = temporaryData.Category