IF OBJECT_ID('import.TemporaryData', 'U') IS NOT NULL
 DROP TABLE [import].[TemporaryData];
IF EXISTS ( SELECT  *
                FROM    sys.schemas
                WHERE   name = N'import' )
BEGIN 
    DROP SCHEMA import
END
GO