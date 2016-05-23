IF OBJECT_ID('dbo.TemporaryData', 'U') IS NOT NULL
 DROP TABLE [TemporaryData];
GO
CREATE TABLE [TemporaryData] (
    [Product] nvarchar(255) not null,
    [Customer] nvarchar(255) not null,
    [TransactionId] float not null,
    [Price] float not null,
    [Region] nvarchar(255) not null,
    [Category] nvarchar(255) not null,
    [Date] datetime not null
)
GO