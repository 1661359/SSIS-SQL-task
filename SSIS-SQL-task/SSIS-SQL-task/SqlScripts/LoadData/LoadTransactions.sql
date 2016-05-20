insert into [dbo].[Transaction] (CustomerID, Date, Region)
select c.CustomerID, td.Date, td.Region 
from [dbo].[TemporaryData] as td
join [dbo].[Customer] as c
on c.Name = td.Customer
group by c.CustomerID, td.Date, td.Region