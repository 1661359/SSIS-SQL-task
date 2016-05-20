insert into [TransactionProduct] (TransactionID, ProductID, Price)
select TransactionID, ProductID, Price
from (	select ProductID, product.Name, Region, Date, CustomerID, temporaryData.Price 
		from[TemporaryData] as temporaryData
		join [Customer] as customer
		on customer.Name = temporaryData.Customer
		join [Product] as product
		on temporaryData.Product = product.Name) as dataWithCustomerId
join [Transaction] as transactionTable
on transactionTable.Date = dataWithCustomerId.Date and transactionTable.Region = dataWithCustomerId.Region 
	and transactionTable.CustomerID = dataWithCustomerId.CustomerID

