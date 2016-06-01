IF OBJECT_ID('import.TemporaryData', 'U') IS NOT NULL
	DROP TABLE [import].[TemporaryData];	
GO
IF SCHEMA_ID('import') IS NOT NULL
	DROP SCHEMA import;
GO
CREATE SCHEMA import AUTHORIZATION dbo
	CREATE TABLE [TemporaryData] (
		[Product] nvarchar(255) not null,
		[Customer] nvarchar(255) not null,
		[TransactionId] float not null,
		[Price] decimal(5,2) not null,
		[Region] nvarchar(255) not null,
		[Category] nvarchar(255) not null,
		[Date] datetime not null	
	)
GO