
CREATE DATABASE PEPEG
GO
IF OBJECT_ID('DATOS.VACAS', 'U') IS NOT NULL
DROP TABLE DATOS.VACAS
GO
-- Create the table in the specified schema
CREATE TABLE DATOS.VACAS
(
    VACASId INT NOT NULL PRIMARY KEY, -- primary key column
    Column1 [NO.SERIAL](50) NOT NULL,
    Column2 [NACIMIENTO](50) NOT NULL,
    COLUMN3 [VACUNAS](50) NOT NULL,
    COLUMN4 [SEXO](50) NOT NULL,
    COLUMN5 [RAZA](50) NOT NULL,
    COLUMN6 [PESO](50) NOT NULL,
    COLUMN7 [ALTURA](50) NOT NULL,
    COLUMN8 [RASGOS CARACTERÍSTICOS](50) NOT NULL,

    -- specify more columns here
);
GO
-- Create a new view called 'ViewName' in schema 'SchemaName'
-- Drop the view if it already exists
IF EXISTS (
SELECT *
    FROM sys.views
    JOIN sys.schemas
    ON sys.views.schema_id = sys.schemas.schema_id
    WHERE sys.schemas.name = N'SchemaName'
    AND sys.views.name = N'ViewName'
)
DROP VIEW SchemaName.ViewName
GO
-- Create the view in the specified schema
CREATE VIEW SchemaName.ViewName
AS
    -- body of the view
    SELECT [Column1],
        [Column2],
        [Column3],
    FROM SchemaName.TableName
GO