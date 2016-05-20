insert into [Category] (Name)
select td.Category
from [TemporaryData] as td
group by td.Category 