USE [Roulette]
GO
/****** Object:  StoredProcedure [dbo].[SP_InsertRoulette]    Script Date: 11/04/2021 22:44:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Miguel Angel Lara Alvarado
-- Create date: 11/04/2021
-- Description:	SP that inserts a roulette
-- =============================================
CREATE   PROCEDURE [dbo].[SP_InsertRoulette]

AS
BEGIN
	
	SET NOCOUNT ON;

	DECLARE @_IdInactiveState TINYINT 

	SELECT @_IdInactiveState = IdState 
		FROM States ST WITH (NOLOCK) 
	WHERE ST.Description = 'Inactive' 

    INSERT INTO Roulettes
	(IdState
	,DateCreation)
	VALUES
	(@_IdInactiveState
	,SYSDATETIME())

	SELECT @@IDENTITY

END
GO
