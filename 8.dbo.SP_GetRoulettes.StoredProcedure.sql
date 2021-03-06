USE [Roulette]
GO
/****** Object:  StoredProcedure [dbo].[SP_GetRoulettes]    Script Date: 11/04/2021 22:44:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Miguel Angel Lara Alvarado
-- Create date: 11/04/2021
-- Description:	SP that gets the roulettes
-- =============================================
CREATE PROCEDURE [dbo].[SP_GetRoulettes]
	
AS
BEGIN
	SET NOCOUNT ON;

	SELECT RO.IdRoulette
		  ,RO.DateCreation
		  ,ST.IdState
		  ,ST.Description
	FROM Roulettes RO WITH (NOLOCK)
	INNER JOIN States ST WITH (NOLOCK)
		ON RO.IdState = ST.IdState

	END
GO
