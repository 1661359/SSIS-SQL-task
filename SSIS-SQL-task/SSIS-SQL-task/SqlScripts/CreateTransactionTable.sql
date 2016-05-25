CREATE TABLE [Market].[Transaction](
	[TransactionID] [uniqueidentifier] DEFAULT (newsequentialid()) NOT NULL,
	[Region] [nvarchar](255)  NOT NULL,
	[CustomerID] [uniqueidentifier] NOT NULL,
	[Date] [date] NOT NULL,
 CONSTRAINT [PK_Transaction] PRIMARY KEY CLUSTERED 
(
	[TransactionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [Market].[Transaction]  WITH CHECK ADD  CONSTRAINT [FK_Transaction_Transaction] FOREIGN KEY([CustomerID])
REFERENCES [Market].[Customer] ([CustomerID])
GO

ALTER TABLE [Market].[Transaction] CHECK CONSTRAINT [FK_Transaction_Transaction]
GO