USE [bapEmpresa02]
GO
/****** Object:  StoredProcedure [dbo].[gspTbppreceta_INSERT_UPDATE]    Script Date: 02/10/2015 11:59:39 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[gspTbppreceta_INSERT_UPDATE] (
	 @articid CHAR(4)
	,@version CHAR(4)
	,@coltalla CHAR(24)
	,@fechemi DATETIME = NULL
	,@estado CHAR(2) = NULL
	,@usuar CHAR(15) = NULL
	,@XML AS XML = NULL
	,@Idx AS CHAR(3) = 'INS'
	)
AS
BEGIN TRY
	IF (@Idx = 'INS')
	BEGIN
		--BEGIN TRAN 
		--INSERTA	WITH MARK;
		IF ((SELECT COUNT(1) FROM [dbo].[tb_pp_recetacab] WHERE [version]=@version AND articid=@articid)=0)
		BEGIN				
		INSERT INTO [dbo].[tb_pp_recetacab] (
			[articid]
			,[version]
			,[fechemi]
			,[estado]
			,[usuar]
			,[fecre]
			,[feact]
			)
		VALUES (
			@articid
			,@version
			,GETDATE()
			,@estado
			,@usuar
			,getdate()
			,getdate()
			)
		 END
		/*==================================================
				Insert Detalle
		=================================================*/
		EXEC [dbo].[gspTbpprecetadet_INSERT_UPDATE] @articid
			,@version
			,@coltalla
			,@XML

		--COMMIT; 
		--TRAN INSERTA;
	END

	IF (@Idx = 'UPD')
	BEGIN
		--BEGIN TRAN 
		--ACTUALIZAR	WITH MARK;

		/* 1. BORRA REGISTRO ANTERIOR DEL DETALLE */
		DELETE
		FROM [dbo].[tb_pp_recetadet]
		WHERE [version] = @version
			AND articid = @articid

		/* 2. ACTUALIZA REGISTRO DE LA CABECERA */
		UPDATE [dbo].[tb_pp_recetacab]
		SET fechemi = @fechemi
			,estado = @estado
			,usuar = @usuar
			,fecre = GETDATE()
			,feact = GETDATE()
		WHERE [version] = @version
			AND articid = @articid

		/* 3. INSERTA NUEVO REGISTRO DEL DETALLE */
		EXEC [dbo].[gspTbpprecetadet_INSERT_UPDATE] @articid
			,@version
			,@coltalla
			,@XML

		--COMMIT; 
		--TRAN ACTUALIZAR;
	END

	IF (@Idx = 'DEL')
	BEGIN
		--BEGIN TRAN 
		--ELIMINAR WITH MARK;

		UPDATE [dbo].[tb_pp_recetacab]
		SET estado = '9'
			,usuar = @usuar
			,feact = GETDATE()
		WHERE [version] = @version
			AND articid = @articid

		--COMMIT; 
		--TRAN ELIMINAR;
	END
END TRY

BEGIN CATCH
	EXEC gsp_GetErrorInfo
END CATCH
