insert into [Customer] (Name)
select td.Customer
from [TemporaryData] as td
group by td.Customer 
