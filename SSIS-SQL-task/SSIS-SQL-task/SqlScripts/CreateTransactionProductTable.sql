CREATE TABLE [Market].[TransactionProduct](
	[TransactionID] [uniqueidentifier] NOT NULL,
	[ProductID] [uniqueidentifier] NOT NULL,
	[Price] [decimal] NOT NULL,
 CONSTRAINT [PK_TransactionProduct] PRIMARY KEY CLUSTERED 
(
	[TransactionID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [Market].[TransactionProduct]  WITH CHECK ADD  CONSTRAINT [FK_TransactionProduct_Product] FOREIGN KEY([ProductID])
REFERENCES [Market].[Product] ([ProductID])
GO

ALTER TABLE [Market].[TransactionProduct] CHECK CONSTRAINT [FK_TransactionProduct_Product]
GO

ALTER TABLE [Market].[TransactionProduct]  WITH CHECK ADD  CONSTRAINT [FK_TransactionProduct_Transaction] FOREIGN KEY([TransactionID])
REFERENCES [Market].[Transaction] ([TransactionID])
GO

ALTER TABLE [Market].[TransactionProduct] CHECK CONSTRAINT [FK_TransactionProduct_Transaction]
GO