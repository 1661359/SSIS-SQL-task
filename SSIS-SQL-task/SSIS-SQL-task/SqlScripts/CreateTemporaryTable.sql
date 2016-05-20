IF OBJECT_ID('dbo.TemporaryData', 'U') IS NOT NULL
 DROP TABLE [TemporaryData];
GO
CREATE TABLE [TemporaryData] (
    [Product] nvarchar(255),
    [Customer] nvarchar(255),
    [TransactionId] float,
    [Price] float,
    [Region] nvarchar(255),
    [Category] nvarchar(255),
    [Date] datetime
)
GO