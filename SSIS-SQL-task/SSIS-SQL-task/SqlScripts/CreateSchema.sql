IF NOT EXISTS ( SELECT  *
                FROM    sys.schemas
                WHERE   name = N'Market' )
BEGIN 
    EXEC('CREATE SCHEMA [Market] AUTHORIZATION [dbo]');
END
GO