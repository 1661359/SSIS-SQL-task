CREATE TABLE [Market].[Product](
	[ProductID] [uniqueidentifier] DEFAULT (newsequentialid()) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Price] [decimal](5,2) NOT NULL,
	[CategoryID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [Market].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([CategoryID])
REFERENCES [Market].[Category] ([CategoryID])
GO

ALTER TABLE [Market].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO