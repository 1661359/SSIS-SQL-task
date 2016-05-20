IF OBJECT_ID('dbo.Temporary Destination', 'U') IS NOT NULL
 DROP TABLE [Temporary Destination];
GO
CREATE TABLE [Temporary Destination] (
    [Product] nvarchar(255),
    [Customer] nvarchar(255),
    [TransactionId] float,
    [Price] float,
    [Region] nvarchar(255),
    [Category] nvarchar(255),
    [Date] datetime
)
GO