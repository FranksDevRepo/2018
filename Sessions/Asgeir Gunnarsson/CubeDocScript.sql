USE [CubeDoc]
GO
/****** Object:  Schema [dna]    Script Date: 19.6.2018 20:50:36 ******/
CREATE SCHEMA [dna]
GO
/****** Object:  Table [dna].[Catalogs]    Script Date: 19.6.2018 20:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dna].[Catalogs](
	[Description] [nvarchar](max) NULL,
	[DBType] [varchar](16) NULL,
	[Catalog_name] [varchar](255) NULL,
	[Derived Column 1] [varchar](100) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dna].[CubesPerspectives]    Script Date: 19.6.2018 20:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dna].[CubesPerspectives](
	[BASE_CUBE_NAME] [nvarchar](255) NULL,
	[CATALOG_NAME] [nvarchar](255) NULL,
	[SCHEMA_NAME] [nvarchar](255) NULL,
	[CUBE_NAME] [nvarchar](255) NULL,
	[CUBE_TYPE] [nvarchar](255) NULL,
	[CUBE_GUID] [uniqueidentifier] NULL,
	[CREATED_ON] [datetime] NULL,
	[LAST_SCHEMA_UPDATE] [datetime] NULL,
	[SCHEMA_UPDATED_BY] [nvarchar](255) NULL,
	[LAST_DATA_UPDATE] [datetime] NULL,
	[DATA_UPDATED_BY] [nvarchar](255) NULL,
	[DESCRIPTION] [nvarchar](255) NULL,
	[IS_DRILLTHROUGH_ENABLED] [bit] NULL,
	[IS_LINKABLE] [bit] NULL,
	[IS_WRITE_ENABLED] [bit] NULL,
	[IS_SQL_ENABLED] [bit] NULL,
	[CUBE_CAPTION] [nvarchar](255) NULL,
	[CUBE_SOURCE] [int] NULL,
	[PREFERRED_QUERY_PATTERNS] [int] NULL,
	[DBType] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dna].[Datasources]    Script Date: 19.6.2018 20:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dna].[Datasources](
	[CATALOG_NAME] [nvarchar](255) NULL,
	[SCHEMA_NAME] [nvarchar](255) NULL,
	[DATASOURCE_NAME] [nvarchar](255) NULL,
	[DATASOURCE_TYPE] [nvarchar](255) NULL,
	[CREATED_ON] [datetime] NULL,
	[LAST_SCHEMA_UPDATE] [datetime] NULL,
	[DESCRIPTION] [nvarchar](255) NULL,
	[TIMEOUT] [bigint] NULL,
	[DBMS_NAME] [nvarchar](255) NULL,
	[DBMS_VERSION] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dna].[DimensionAttributes]    Script Date: 19.6.2018 20:50:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dna].[DimensionAttributes](
	[DATABASE] [nvarchar](255) NULL,
	[FOLDER] [nvarchar](255) NULL,
	[VISIBLE] [bit] NULL,
	[CUBE_NAME] [nvarchar](255) NULL,
	[DIMENSION_UNIQUE_NAME] [nvarchar](255) NULL,
	[HIERARCHY_CAPTION] [nvarchar](255) NULL,
	[HIERARCHY_CARDINALITY] [bigint] NULL,
	[DESCRIPTION] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dna].[Dimensions]    Script Date: 19.6.2018 20:50:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dna].[Dimensions](
	[CATALOG_NAME] [nvarchar](255) NULL,
	[CUBE_NAME] [nvarchar](255) NULL,
	[DIMENSION_NAME] [nvarchar](255) NULL,
	[DIMENSION_UNIQUE_NAME] [nvarchar](255) NULL,
	[DIMENSION_CAPTION] [nvarchar](255) NULL,
	[DIMENSION_ORDINAL] [bigint] NULL,
	[DIMENSION_CARDINALITY] [bigint] NULL,
	[DEFAULT_HIERARCHY] [nvarchar](255) NULL,
	[DESCRIPTION] [nvarchar](255) NULL,
	[DIMENSION_IS_VISIBLE] [bit] NULL,
	[DIMENSION_MASTER_NAME] [nvarchar](255) NULL,
	[SCHEMA_NAME] [nvarchar](255) NULL,
	[DIMENSION_GUID] [uniqueidentifier] NULL,
	[DIMENSION_TYPE] [smallint] NULL,
	[IS_VIRTUAL] [bit] NULL,
	[IS_READWRITE] [bit] NULL,
	[DIMENSION_UNIQUE_SETTINGS] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dna].[DimensionsMembersHierarchies]    Script Date: 19.6.2018 20:50:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dna].[DimensionsMembersHierarchies](
	[LEVEL_IS_VISIBLE] [bit] NULL,
	[CATALOG_NAME] [nvarchar](255) NULL,
	[LEVEL_NAME] [nvarchar](255) NULL,
	[LEVEL_ORDERING_PROPERTY] [nvarchar](255) NULL,
	[CUBE_NAME] [nvarchar](255) NULL,
	[DIMENSION_UNIQUE_NAME] [nvarchar](255) NULL,
	[LEVEL_CAPTION] [nvarchar](255) NULL,
	[LEVEL_NUMBER] [bigint] NULL,
	[HIERARCHY_UNIQUE_NAME] [nvarchar](255) NULL,
	[LEVEL_NAME_SQL_COLUMN_NAME] [nvarchar](255) NULL,
	[LEVEL_KEY_SQL_COLUMN_NAME] [nvarchar](255) NULL,
	[LEVEL_ORIGIN] [int] NULL,
	[DESCRIPTION] [nvarchar](255) NULL,
	[SCHEMA_NAME] [nvarchar](255) NULL,
	[LEVEL_UNIQUE_NAME] [nvarchar](255) NULL,
	[LEVEL_GUID] [uniqueidentifier] NULL,
	[LEVEL_CARDINALITY] [bigint] NULL,
	[LEVEL_TYPE] [int] NULL,
	[CUSTOM_ROLLUP_SETTINGS] [int] NULL,
	[LEVEL_UNIQUE_SETTINGS] [int] NULL,
	[LEVEL_DBTYPE] [int] NULL,
	[LEVEL_MASTER_UNIQUE_NAME] [nvarchar](255) NULL,
	[LEVEL_UNIQUE_NAME_SQL_COLUMN_NAME] [nvarchar](255) NULL,
	[LEVEL_ATTRIBUTE_HIERARCHY_NAME] [nvarchar](255) NULL,
	[LEVEL_KEY_CARDINALITY] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dna].[MeasureGroupsAndDimensions]    Script Date: 19.6.2018 20:50:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dna].[MeasureGroupsAndDimensions](
	[CATALOG_NAME] [nvarchar](255) NULL,
	[CUBE_NAME] [nvarchar](255) NULL,
	[MEASUREGROUP_CARDINALITY] [nvarchar](255) NULL,
	[DIMENSION_CARDINALITY] [nvarchar](255) NULL,
	[DIMENSION_GRANULARITY] [nvarchar](255) NULL,
	[SCHEMA_NAME] [nvarchar](255) NULL,
	[MEASUREGROUP_NAME] [nvarchar](255) NULL,
	[DIMENSION_UNIQUE_NAME] [nvarchar](255) NULL,
	[DIMENSION_IS_VISIBLE] [bit] NULL,
	[DIMENSION_IS_FACT_DIMENSION] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dna].[MeasuresCalculatedMembers]    Script Date: 19.6.2018 20:50:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dna].[MeasuresCalculatedMembers](
	[MEASURE_DISPLAY_FOLDER] [nvarchar](255) NULL,
	[MEASURE_IS_VISIBLE] [bit] NULL,
	[EXPRESSION] [nvarchar](255) NULL,
	[DEFAULT_FORMAT_STRING] [nvarchar](255) NULL,
	[MEASURE_AGGREGATOR] [int] NULL,
	[CATALOG_NAME] [nvarchar](255) NULL,
	[SCHEMA_NAME] [nvarchar](255) NULL,
	[CUBE_NAME] [nvarchar](255) NULL,
	[MEASURE_NAME] [nvarchar](255) NULL,
	[MEASURE_UNIQUE_NAME] [nvarchar](255) NULL,
	[MEASURE_CAPTION] [nvarchar](255) NULL,
	[MEASURE_GUID] [uniqueidentifier] NULL,
	[DATA_TYPE] [int] NULL,
	[NUMERIC_PRECISION] [int] NULL,
	[NUMERIC_SCALE] [smallint] NULL,
	[MEASURE_UNITS] [nvarchar](255) NULL,
	[DESCRIPTION] [nvarchar](255) NULL,
	[LEVELS_LIST] [nvarchar](255) NULL,
	[MEASURE_NAME_SQL_COLUMN_NAME] [nvarchar](255) NULL,
	[MEASURE_UNQUALIFIED_CAPTION] [nvarchar](255) NULL,
	[MEASUREGROUP_NAME] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dna].[MeasuresGroups]    Script Date: 19.6.2018 20:50:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dna].[MeasuresGroups](
	[CATALOG_NAME] [nvarchar](255) NULL,
	[CUBE_NAME] [nvarchar](255) NULL,
	[MEASUREGROUP_NAME] [nvarchar](255) NULL,
	[DESCRIPTION] [nvarchar](255) NULL,
	[IS_WRITE_ENABLED] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[upCubeDocAttributesInDimension]    Script Date: 19.6.2018 20:50:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[upCubeDocAttributesInDimension]
    (@Catalog       VARCHAR(255)
    ,@Cube          VARCHAR(255)
    ,@Dimension  VARCHAR(255)
    )
AS

SELECT * 
        , CASE WHEN CAST([LEVEL_ORIGIN] AS INT) & 1 = 1 THEN 1 ELSE 0 END AS IsHierarchy
        , CASE WHEN CAST([LEVEL_ORIGIN] AS INT) & 2 = 2 THEN 1 ELSE 0 END AS IsAttribute
        , CASE WHEN CAST([LEVEL_ORIGIN] AS INT) & 4 = 4 THEN 1 ELSE 0 END AS IsKey
    FROM OPENQUERY(CubeLinkedServer, 'SELECT * FROM $SYSTEM.MDSCHEMA_LEVELS
        WHERE [LEVEL_NUMBER]>0 
        AND [LEVEL_IS_VISIBLE]')
     WHERE  CAST([CATALOG_NAME] AS VARCHAR(255))            = @Catalog
        AND CAST([CUBE_NAME] AS VARCHAR(255))               = @Cube
        AND CAST([DIMENSION_UNIQUE_NAME] AS VARCHAR(255))   = @Dimension
GO
/****** Object:  StoredProcedure [dbo].[upCubeDocBUSMatrix]    Script Date: 19.6.2018 20:50:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[upCubeDocBUSMatrix]
    (@Catalog       VARCHAR(255),
     @Cube          VARCHAR(255)
    )
AS

SELECT  
        bus.[CATALOG_NAME]
        ,bus.[CUBE_NAME]
        ,bus.[MEASUREGROUP_NAME]
        ,bus.[MEASUREGROUP_CARDINALITY]
        ,REPLACE(REPLACE(CAST(bus.[DIMENSION_UNIQUE_NAME] AS VARCHAR(255)) ,'[',''),']','') AS [DIMENSION_UNIQUE_NAME]
        ,bus.[DIMENSION_CARDINALITY]
        ,bus.[DIMENSION_IS_FACT_DIMENSION]
        ,bus.[DIMENSION_GRANULARITY]
        ,dim.[DIMENSION_MASTER_NAME]
        ,1 AS Relationship
    FROM 
        OPENQUERY(CubeLinkedServer, 'SELECT 
                  [CATALOG_NAME]
                , [CUBE_NAME]
                , [MEASUREGROUP_NAME]
                , [MEASUREGROUP_CARDINALITY]
                , [DIMENSION_UNIQUE_NAME]
                , [DIMENSION_CARDINALITY]
                , [DIMENSION_IS_FACT_DIMENSION]
                , [DIMENSION_GRANULARITY] 
            FROM $SYSTEM.MDSCHEMA_MEASUREGROUP_DIMENSIONS
            WHERE [DIMENSION_IS_VISIBLE]') bus
        INNER JOIN 
        OPENQUERY(CubeLinkedServer, 'SELECT 
                  [CATALOG_NAME]
                , [CUBE_NAME]
                , [DIMENSION_UNIQUE_NAME]
                , [DIMENSION_MASTER_NAME]
            FROM $SYSTEM.MDSCHEMA_DIMENSIONS') dim
            ON CAST(bus.[CATALOG_NAME] AS VARCHAR(255))             = CAST(dim.[CATALOG_NAME] AS VARCHAR(255))
            AND CAST(bus.[CUBE_NAME] AS VARCHAR(255))               = CAST(dim.[CUBE_NAME] AS VARCHAR(255))
            AND CAST(bus.[DIMENSION_UNIQUE_NAME] AS VARCHAR(255))   = CAST(dim.[DIMENSION_UNIQUE_NAME] AS VARCHAR(255))
     WHERE  CAST(bus.[CATALOG_NAME] AS VARCHAR(255))        = @Catalog
        AND CAST(bus.[CUBE_NAME] AS VARCHAR(255))           = @Cube
GO
/****** Object:  StoredProcedure [dbo].[upCubeDocCubes]    Script Date: 19.6.2018 20:50:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[upCubeDocCubes]
    (@Catalog       VARCHAR(255) = NULL
    )
AS

    SELECT * 
    FROM OPENQUERY(CubeLinkedServer, 
        'SELECT * 
         FROM $SYSTEM.MDSCHEMA_CUBES 
         WHERE CUBE_SOURCE = 1')
     WHERE  CAST([CATALOG_NAME] AS VARCHAR(255)) = @Catalog
        OR @Catalog IS NULL
GO
/****** Object:  StoredProcedure [dbo].[upCubeDocDimensionsForMeasureGroup]    Script Date: 19.6.2018 20:50:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[upCubeDocDimensionsForMeasureGroup]
    (@Catalog       VARCHAR(255)
    ,@Cube          VARCHAR(255)
    ,@MeasureGroup  VARCHAR(255)
    )
AS

 DECLARE @BoxSize INT
 DECLARE @Stretch FLOAT
 SET @BoxSize = 250
 SET @Stretch = 1.4

;WITH BaseData AS
(
    SELECT 
          mgd.*
        , d.[DESCRIPTION] 
        , REPLACE(REPLACE(CAST(mgd.[DIMENSION_UNIQUE_NAME] AS VARCHAR(255)),'[',''),']','') AS DimensionCaption
        , REPLACE(REPLACE(CAST(mgd.[MEASUREGROUP_NAME] AS VARCHAR(255)),'[',''),']','') AS MeasureGroupCaption
    FROM OPENQUERY(CubeLinkedServer, 'SELECT 
                [CATALOG_NAME]+[CUBE_NAME]+[MEASUREGROUP_NAME]+[DIMENSION_UNIQUE_NAME] AS Seq
                , [CATALOG_NAME]
                , [CUBE_NAME]
                , [MEASUREGROUP_NAME]
                , [MEASUREGROUP_CARDINALITY]
                , [DIMENSION_UNIQUE_NAME]
                , [DIMENSION_CARDINALITY]
                , [DIMENSION_IS_VISIBLE]
                , [DIMENSION_IS_FACT_DIMENSION]
                , [DIMENSION_GRANULARITY] 
            FROM $SYSTEM.MDSCHEMA_MEASUREGROUP_DIMENSIONS
            WHERE [DIMENSION_IS_VISIBLE]') mgd
        INNER JOIN OPENQUERY(CubeLinkedServer, 'SELECT 
                [CATALOG_NAME]
                ,[CUBE_NAME]
                ,[DIMENSION_UNIQUE_NAME]
                ,[DESCRIPTION]
            FROM $SYSTEM.MDSCHEMA_DIMENSIONS  
            WHERE [DIMENSION_IS_VISIBLE]') d 
                ON  CAST(mgd.[CATALOG_NAME] AS VARCHAR(255))          = CAST(d.[CATALOG_NAME] AS VARCHAR(255))
                AND CAST(mgd.[CUBE_NAME] AS VARCHAR(255))             = CAST(d.[CUBE_NAME] AS VARCHAR(255))
                AND CAST(mgd.[DIMENSION_UNIQUE_NAME] AS VARCHAR(255)) = CAST(d.[DIMENSION_UNIQUE_NAME] AS VARCHAR(255))
     WHERE  CAST(mgd.[CATALOG_NAME] AS VARCHAR(255))        = @Catalog
        AND CAST(mgd.[CUBE_NAME] AS VARCHAR(255))           = @Cube
        AND CAST(mgd.[MEASUREGROUP_NAME] AS VARCHAR(255))   = @MeasureGroup
)
,TotCount AS
(
    SELECT COUNT(*) AS RecCount FROM BaseData 
)
, RecCount AS
(
    SELECT RANK() OVER (ORDER BY CAST(Seq AS VARCHAR(255))) AS RecID
        , RecCount
        , BaseData.* 
    FROM 
        BaseData CROSS JOIN TotCount 
)
, Angles AS
(
    SELECT 
        * 
        , SIN(RADIANS((CAST(RecID AS FLOAT)/CAST(RecCount AS FLOAT)) * 360)) * 1000 AS x
        , COS(RADIANS((CAST(RecID AS FLOAT)/CAST(RecCount AS FLOAT)) * 360)) * 1000 AS y
    FROM RecCount
)
,Results AS
(
    SELECT 
        *
        , geometry::STGeomFromText('POINT(' + CAST(y AS VARCHAR(20)) + ' ' + CAST(x AS VARCHAR(20))  + ')',4326) AS Posn
        , geometry::STPolyFromText('POLYGON ((' + 
            CAST((y*@Stretch)+@BoxSize AS VARCHAR(20)) + ' ' + CAST(x+(@BoxSize/2) AS VARCHAR(20)) + ', ' +
            CAST((y*@Stretch)-@BoxSize AS VARCHAR(20)) + ' ' + CAST(x+(@BoxSize/2) AS VARCHAR(20)) + ', ' +
            CAST((y*@Stretch)-@BoxSize AS VARCHAR(20)) + ' ' + CAST(x-(@BoxSize/2) AS VARCHAR(20)) + ', ' +
            CAST((y*@Stretch)+@BoxSize AS VARCHAR(20)) + ' ' + CAST(x-(@BoxSize/2) AS VARCHAR(20)) + ', ' +
            CAST((y*@Stretch)+@BoxSize AS VARCHAR(20)) + ' ' + CAST(x+(@BoxSize/2) AS VARCHAR(20)) + '            
            ))',0) AS Box
         , geometry::STLineFromText('LINESTRING (0 0, ' + CAST((y*@Stretch) AS VARCHAR(20)) + ' ' + CAST(x AS VARCHAR(20))  + ')', 0) AS Line
         , geometry::STPolyFromText('POLYGON ((' + 
            CAST(0+@BoxSize AS VARCHAR(20)) + ' ' + CAST(0+(@BoxSize/2) AS VARCHAR(20)) + ', ' +
            CAST(0-@BoxSize AS VARCHAR(20)) + ' ' + CAST(0+(@BoxSize/2) AS VARCHAR(20)) + ', ' +
            CAST(0-@BoxSize AS VARCHAR(20)) + ' ' + CAST(0-(@BoxSize/2) AS VARCHAR(20)) + ', ' +
            CAST(0+@BoxSize AS VARCHAR(20)) + ' ' + CAST(0-(@BoxSize/2) AS VARCHAR(20)) + ', ' +
            CAST(0+@BoxSize AS VARCHAR(20)) + ' ' + CAST(0+(@BoxSize/2) AS VARCHAR(20)) + '            
            ))',0) AS CenterBox
         
         
    FROM Angles
)
SELECT * FROM Results
GO
/****** Object:  StoredProcedure [dbo].[upCubeDocDimensionsInCube]    Script Date: 19.6.2018 20:50:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[upCubeDocDimensionsInCube]
    (@Catalog       VARCHAR(255)
    ,@Cube          VARCHAR(255)
    )
AS

SELECT * FROM OPENQUERY(CubeLinkedServer, 'SELECT *
        FROM $SYSTEM.MDSCHEMA_DIMENSIONS  
        WHERE [DIMENSION_IS_VISIBLE]')
     WHERE  CAST([CATALOG_NAME] AS VARCHAR(255))        = @Catalog
        AND CAST([CUBE_NAME] AS VARCHAR(255))           = @Cube
GO
/****** Object:  StoredProcedure [dbo].[upCubeDocMeasureGroupsForDimension]    Script Date: 19.6.2018 20:50:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[upCubeDocMeasureGroupsForDimension]
    (@Catalog       VARCHAR(255)
    ,@Cube          VARCHAR(255)
    ,@Dimension     VARCHAR(255)
    )
AS

    SELECT 
          mgd.*
        , m.[DESCRIPTION] 
    FROM OPENQUERY(CubeLinkedServer, 'SELECT 
                  [CATALOG_NAME]
                , [CUBE_NAME]
                , [MEASUREGROUP_NAME]
                , [MEASUREGROUP_CARDINALITY]
                , [DIMENSION_UNIQUE_NAME]
            FROM $SYSTEM.MDSCHEMA_MEASUREGROUP_DIMENSIONS
            WHERE [DIMENSION_IS_VISIBLE]') mgd
        INNER JOIN OPENQUERY(CubeLinkedServer, 'SELECT 
                [CATALOG_NAME]
                ,[CUBE_NAME]
                ,[MEASUREGROUP_NAME]
                ,[DESCRIPTION]
            FROM $SYSTEM.MDSCHEMA_MEASUREGROUPS  
            ') m 
                ON  CAST(mgd.[CATALOG_NAME] AS VARCHAR(255))          = CAST(m.[CATALOG_NAME] AS VARCHAR(255))
                AND CAST(mgd.[CUBE_NAME] AS VARCHAR(255))             = CAST(m.[CUBE_NAME] AS VARCHAR(255))
                AND CAST(mgd.[MEASUREGROUP_NAME] AS VARCHAR(255))     = CAST(m.[MEASUREGROUP_NAME] AS VARCHAR(255))
     WHERE  CAST(mgd.[CATALOG_NAME] AS VARCHAR(255))            = @Catalog
        AND CAST(mgd.[CUBE_NAME] AS VARCHAR(255))               = @Cube
        AND CAST(mgd.[DIMENSION_UNIQUE_NAME] AS VARCHAR(255))   = @Dimension
GO
/****** Object:  StoredProcedure [dbo].[upCubeDocMeasureGroupsInCube]    Script Date: 19.6.2018 20:50:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[upCubeDocMeasureGroupsInCube]
    (@Catalog       VARCHAR(255)
    ,@Cube          VARCHAR(255)
    )
AS


SELECT * FROM OPENQUERY(CubeLinkedServer, 'SELECT *
        FROM $SYSTEM.MDSCHEMA_MEASUREGROUPS ')
     WHERE  CAST([CATALOG_NAME] AS VARCHAR(255))        = @Catalog
        AND CAST([CUBE_NAME] AS VARCHAR(255))           = @Cube
GO
/****** Object:  StoredProcedure [dbo].[upCubeDocMeasuresInMeasureGroup]    Script Date: 19.6.2018 20:50:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[upCubeDocMeasuresInMeasureGroup]
    (@Catalog       VARCHAR(255)
    ,@Cube          VARCHAR(255)
    ,@MeasureGroup  VARCHAR(255)
    )
AS

SELECT * FROM OPENQUERY(CubeLinkedServer, 'SELECT *
        FROM $SYSTEM.MDSCHEMA_MEASURES 
        WHERE [MEASURE_IS_VISIBLE]')
     WHERE  CAST([CATALOG_NAME] AS VARCHAR(255))        = @Catalog
        AND CAST([CUBE_NAME] AS VARCHAR(255))           = @Cube
        AND CAST([MEASUREGROUP_NAME] AS VARCHAR(255))   = @MeasureGroup
GO
/****** Object:  StoredProcedure [dbo].[upCubeDocSearch]    Script Date: 19.6.2018 20:50:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[upCubeDocSearch]
    (@Search        VARCHAR(255)
    ,@Catalog       VARCHAR(255)=NULL
    ,@Cube          VARCHAR(255)=NULL
    )
AS

    WITH dbo AS
    (
        --Cubes
        SELECT CAST('Cube' AS VARCHAR(20)) AS [Type]
                , CAST(CATALOG_NAME AS VARCHAR(255)) AS [Catalog]
                , CAST(CUBE_NAME AS VARCHAR(255)) AS [Cube]
                , CAST(CUBE_NAME AS VARCHAR(255)) AS [Name]
                , CAST(DESCRIPTION AS VARCHAR(4000)) AS [Description]
                , CAST(CUBE_NAME AS VARCHAR(255)) AS [Link]
             FROM OPENQUERY(CubeLinkedServer, 'SELECT [CATALOG_NAME], [CUBE_NAME], [DESCRIPTION] 
                FROM $SYSTEM.MDSCHEMA_CUBES 
                WHERE CUBE_SOURCE = 1')
         WHERE  (CAST([CATALOG_NAME] AS VARCHAR(255))            = @Catalog OR @Catalog IS NULL)

        UNION ALL

        --Dimensions
        SELECT CAST('Dimension' AS VARCHAR(20)) AS [Type]
                , CAST(CATALOG_NAME AS VARCHAR(255)) AS [Catalog]
                , CAST(CUBE_NAME AS VARCHAR(255)) AS [Cube]
                , CAST(DIMENSION_NAME AS VARCHAR(255)) AS [Name]
                , CAST(DESCRIPTION AS VARCHAR(4000)) AS [Description]
                , CAST(DIMENSION_UNIQUE_NAME AS VARCHAR(255)) AS [Link]
        FROM OPENQUERY(CubeLinkedServer, 'SELECT [CATALOG_NAME], [CUBE_NAME], [DIMENSION_NAME], [DESCRIPTION], [DIMENSION_UNIQUE_NAME] 
                    FROM $SYSTEM.MDSCHEMA_DIMENSIONS  
                    WHERE [DIMENSION_IS_VISIBLE]')
         WHERE  (CAST([CATALOG_NAME] AS VARCHAR(255))            = @Catalog OR @Catalog IS NULL)
            AND (CAST([CUBE_NAME] AS VARCHAR(255))               = @Cube OR @Cube IS NULL)
            AND LEFT(CAST(CUBE_NAME AS VARCHAR(255)),1)          <>'$' --Filter out dimensions not in a cube
            
         UNION ALL

        --Attributes
        SELECT CAST('Attribute' AS VARCHAR(20)) AS [Type]
                , CAST(CATALOG_NAME AS VARCHAR(255)) AS [Catalog]
                , CAST(CUBE_NAME AS VARCHAR(255)) AS [Cube]
                , CAST(LEVEL_CAPTION AS VARCHAR(255)) AS [Name]
                , CAST(DESCRIPTION AS VARCHAR(4000)) AS [Description]
                , CAST(DIMENSION_UNIQUE_NAME AS VARCHAR(255)) AS [Link]
        FROM OPENQUERY(CubeLinkedServer, 'SELECT [CATALOG_NAME], [CUBE_NAME], [LEVEL_CAPTION], [DESCRIPTION], [DIMENSION_UNIQUE_NAME] 
                    FROM $SYSTEM.MDSCHEMA_LEVELS
                    WHERE [LEVEL_NUMBER]>0 
                    AND [LEVEL_IS_VISIBLE]')
         WHERE  (CAST([CATALOG_NAME] AS VARCHAR(255))            = @Catalog OR @Catalog IS NULL)
            AND (CAST([CUBE_NAME] AS VARCHAR(255))               = @Cube OR @Cube IS NULL)
            AND LEFT(CAST(CUBE_NAME AS VARCHAR(255)),1)          <>'$' --Filter out dimensions not in a cube
            
            
         UNION ALL

        --Measure Groups
        SELECT CAST('Measure Group' AS VARCHAR(20)) AS [Type]
                , CAST(CATALOG_NAME AS VARCHAR(255)) AS [Catalog]
                , CAST(CUBE_NAME AS VARCHAR(255)) AS [Cube]
                , CAST(MEASUREGROUP_NAME AS VARCHAR(255)) AS [Name]
                , CAST(DESCRIPTION AS VARCHAR(4000)) AS [Description]
                , CAST(MEASUREGROUP_NAME AS VARCHAR(255)) AS [Link]
        FROM OPENQUERY(CubeLinkedServer, 'SELECT [CATALOG_NAME], [CUBE_NAME], [MEASUREGROUP_NAME], [DESCRIPTION] 
                    FROM $SYSTEM.MDSCHEMA_MEASUREGROUPS')
         WHERE  (CAST([CATALOG_NAME] AS VARCHAR(255))            = @Catalog OR @Catalog IS NULL)
            AND (CAST([CUBE_NAME] AS VARCHAR(255))               = @Cube OR @Cube IS NULL)
            AND LEFT(CAST(CUBE_NAME AS VARCHAR(255)),1)          <>'$' --Filter out dimensions not in a cube
            
            
         UNION ALL

        --Measures
        SELECT CAST('Measure' AS VARCHAR(20)) AS [Type]
                , CAST(CATALOG_NAME AS VARCHAR(255)) AS [Catalog]
                , CAST(CUBE_NAME AS VARCHAR(255)) AS [Cube]
                , CAST(MEASURE_NAME AS VARCHAR(255)) AS [Name]
                , CAST(DESCRIPTION AS VARCHAR(4000)) AS [Description]
                , CAST(MEASUREGROUP_NAME AS VARCHAR(255)) AS [Link]
        FROM OPENQUERY(CubeLinkedServer, 'SELECT [CATALOG_NAME], [CUBE_NAME], [MEASURE_NAME], [DESCRIPTION], [MEASUREGROUP_NAME] 
                    FROM $SYSTEM.MDSCHEMA_MEASURES 
                    WHERE [MEASURE_IS_VISIBLE]')
         WHERE  (CAST([CATALOG_NAME] AS VARCHAR(255))            = @Catalog OR @Catalog IS NULL)
            AND (CAST([CUBE_NAME] AS VARCHAR(255))               = @Cube OR @Cube IS NULL)
            AND LEFT(CAST(CUBE_NAME AS VARCHAR(255)),1)          <>'$' --Filter out dimensions not in a cube
            
            
    )
    SELECT *
    FROM dbo
    WHERE @Search<>''
        AND ([Name] LIKE '%' + @Search + '%'
          OR [Description] LIKE '%' + @Search + '%'
        )
GO
