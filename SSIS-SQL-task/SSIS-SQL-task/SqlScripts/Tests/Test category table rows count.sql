CREATE PROCEDURE [MarketPlaceDbTests].[Test Category table rows is 17]
AS
BEGIN
	DECLARE @Actual int;
	SELECT @Actual = COUNT(*)
		FROM Market.Category;
	DECLARE @Expected int;	 SET @Expected = 17
	EXEC tSQLt.AssertEquals @Expected, @Actual; 
END