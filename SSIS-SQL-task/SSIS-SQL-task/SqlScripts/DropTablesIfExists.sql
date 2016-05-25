DECLARE @sql NVARCHAR(MAX) = N'';
SELECT @sql += N'
ALTER TABLE ' + QUOTENAME(OBJECT_SCHEMA_NAME(parent_object_id))
    + '.' + QUOTENAME(OBJECT_NAME(parent_object_id)) + 
    ' DROP CONSTRAINT ' + QUOTENAME(name) + ';'
FROM sys.foreign_keys;

EXECUTE(@sql);
EXECUTE sp_MSforeachtable  @command1 = N'DROP TABLE ?', @whereand = N'AND schema_id = SCHEMA_ID(''Market'')';

IF EXISTS ( SELECT  *
                FROM    sys.schemas
                WHERE   name = N'Market' )
BEGIN 	
    DROP SCHEMA Market
END

