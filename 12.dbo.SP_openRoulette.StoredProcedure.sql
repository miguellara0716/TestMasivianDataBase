USE [Roulette]
GO
/****** Object:  StoredProcedure [dbo].[SP_openRoulette]    Script Date: 11/04/2021 22:44:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Miguel Angel Lara Alvarado
-- Create date: 11/04/2021
-- Description:	SP that opens a roulette
-- =============================================
CREATE   PROCEDURE [dbo].[SP_openRoulette]
	 @IdRoulette BIGINT
AS
BEGIN

	SET NOCOUNT ON;

	DECLARE @_IdActiveState TINYINT


	SELECT @_IdActiveState = ST.IdState 
		FROM States ST WITH (NOLOCK) 
	WHERE ST.Description =  'Active'

	UPDATE Roulettes
		SET IdState = @_IdActiveState
	WHERE IdRoulette = @IdRoulette

END
GO
