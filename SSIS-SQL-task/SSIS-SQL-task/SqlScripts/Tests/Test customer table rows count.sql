CREATE PROCEDURE [MarketPlaceDbTests].[Test Customer table rows is 607]
AS
BEGIN
	DECLARE @Actual int;
	SELECT @Actual = COUNT(*)
		FROM Market.Customer;
	DECLARE @Expected int;	 SET @Expected = 607
	EXEC tSQLt.AssertEquals @Expected, @Actual;
END