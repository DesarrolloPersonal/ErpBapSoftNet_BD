USE [bapEmpresa02]
GO
/****** Object:  StoredProcedure [dbo].[gspTbpprecetadet_INSERT_UPDATE]    Script Date: 02/10/2015 12:46:22 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[gspTbpprecetadet_INSERT_UPDATE] (
	@articid CHAR(4)
	,@version CHAR(4)
	,@coltalla CHAR(24)
	,@XML AS XML
	)
AS
BEGIN
	DECLARE @SQLString NVARCHAR(MAX)
		,@ParmDefinition NVARCHAR(MAX)
		,@moduloshort CHAR(2);

	---1.
	SET DATEFORMAT DMY;

	DECLARE @ITEMS CHAR(5);

	-- CREACION DE LA TABLA TEMPORAL PARA LA INSERCION
	CREATE TABLE #paramsTable (
		 articid CHAR(4) NOT NULL
		,[version] CHAR(4) NOT NULL
		,colorid CHAR(4) NOT NULL
		,coltalla CHAR(2) NOT NULL
		,bloqcostid CHAR(4) NOT NULL
		,productid CHAR(13)
		,cantidad INT
		,estado CHAR(2)
		,usuar CHAR(15)
		,fecre DATETIME DEFAULT getdate()
		,feact DATETIME DEFAULT getdate()
		);

			INSERT INTO #paramsTable
			SELECT @articid AS articid
				,@version AS [version]
				,T.Item.value('@colorid', 'CHAR(4)') AS colorid
				,'00' AS coltalla
				,T.Item.value('@bloqcostid', 'CHAR(4)') AS bloqcostid
				,T.Item.value('@productid', 'CHAR(13)') AS productid
				,T.Item.value('@cantidad', 'INT') AS cantidad
				,T.Item.value('@estado', 'CHAR(2)') AS estado
				,T.Item.value('@usuar', 'CHAR(15)') AS usuar
				,GETDATE() AS fecre
				,GETDATE() AS feact
			FROM @XML.nodes('Items/Item') AS T(Item);

	 
	CREATE TABLE #paramsTable1 (
		articid CHAR(4) NOT NULL
		,[version] CHAR(4) NOT NULL
		,colorid CHAR(4) NOT NULL
		,coltalla CHAR(2) NOT NULL
		,bloqcostid CHAR(4) NOT NULL
		,productid CHAR(13)
		,cantidad INT
		,estado CHAR(2)
		,usuar CHAR(15)
		,fecre DATETIME DEFAULT getdate()
		,feact DATETIME DEFAULT getdate())
	  			
	DECLARE 
	@X INT=1, 
	@Y INT=(SELECT (LEN(@coltalla)/2)),  			
	@Z INT=0,
	@S CHAR(3)
	WHILE @X<=@Y
	BEGIN	 	 
	 SET @S= (SELECT SUBSTRING(@coltalla,@X+@Z,2))		
		IF(@S<>'00')
		BEGIN 

		IF(SELECT COUNT(1) FROM tb_pp_recetadet WHERE 
				articid	 COLLATE Modern_Spanish_CI_AS IN(SELECT articid  COLLATE Modern_Spanish_CI_AS	 FROM #paramsTable)
			AND [version] COLLATE Modern_Spanish_CI_AS IN(SELECT [version]COLLATE Modern_Spanish_CI_AS FROM #paramsTable)
			AND colorid	 COLLATE Modern_Spanish_CI_AS IN(SELECT colorid COLLATE Modern_Spanish_CI_AS FROM #paramsTable)
			AND coltalla =@S
			AND bloqcostid COLLATE Modern_Spanish_CI_AS IN(SELECT bloqcostid COLLATE Modern_Spanish_CI_AS FROM #paramsTable)
			AND productid COLLATE Modern_Spanish_CI_AS IN(SELECT productid	COLLATE Modern_Spanish_CI_AS FROM #paramsTable) )=0
		BEGIN
			INSERT INTO #paramsTable1
			SELECT  
			articid,version,colorid,@S AS coltalla,bloqcostid,productid,cantidad,estado,usuar,fecre,feact			
			FROM #paramsTable
		END
		END
	 SET @X+=1
	 SET @Z+=1
	END				
	SET @SQLString = N' ' + N'INSERT INTO [dbo].[tb_pp_recetadet]  ' + N'( ' + N'[articid], ' + N'[version], ' + N'[colorid], ' + N'[coltalla], ' + N'[bloqcostid], ' + N'[productid], ' + N'[cantidad], ' + N'[estado], ' + N'[usuar], ' + N'[fecre], ' + N'[feact] ' + N')	 ' + 
			N'SELECT  
			articid,version,colorid,coltalla,bloqcostid,productid,cantidad,estado,usuar,fecre,feact			
			FROM #paramsTable1';

	EXECUTE sp_executesql @SQLString;

	--COMMIT;		
	DROP TABLE #paramsTable;
	DROP TABLE #paramsTable1;
END
