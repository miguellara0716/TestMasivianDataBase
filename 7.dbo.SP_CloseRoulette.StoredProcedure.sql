USE [Roulette]
GO
/****** Object:  StoredProcedure [dbo].[SP_CloseRoulette]    Script Date: 11/04/2021 22:44:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Miguel Angel Lara Alvarado
-- Create date: 11/04/2021
-- Description:	SP that close a roulette and returns the winner
-- =============================================
CREATE   PROCEDURE [dbo].[SP_CloseRoulette]
	 @IdRoulette BIGINT
AS
BEGIN

	SET NOCOUNT ON;

	DECLARE @_IdInactiveState TINYINT


	SELECT @_IdInactiveState = ST.IdState 
		FROM States ST WITH (NOLOCK) 
	WHERE ST.Description =  'Inactive'

	UPDATE Roulettes
		SET IdState = @_IdInactiveState
	WHERE IdRoulette = @IdRoulette

	SELECT FLOOR(RAND()*(36-0)+0)

END
GO
