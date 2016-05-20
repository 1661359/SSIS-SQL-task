insert into [dbo].[Product] (Name, Price, CategoryID)
select Product, Price, CategoryID
from (	select productWithLastDate.Product, max(temporaryData.Price) as Price, max(temporaryData.Category) as Category
		from(	select Product, max(Date) as LastDate
				from [TemporaryData]  
				group by [Product]) as productWithLastDate
	    join [TemporaryData] as temporaryData
		on productWithLastDate.Product = temporaryData.Product and temporaryData.Date = productWithLastDate.LastDate
		group by productWithLastDate.Product) as productWithCategoryName
join [Category] as category
on category.Name = productWithCategoryName.Category