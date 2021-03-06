USE [Roulette]
GO
/****** Object:  StoredProcedure [dbo].[SP_getsRouletteBets]    Script Date: 11/04/2021 22:44:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Miguel Angel Lara Alvarado
-- Create date: 11/04/2021
-- Description:	SP who gets the roulette bets
-- =============================================
CREATE     PROCEDURE [dbo].[SP_getsRouletteBets] 
	@IdRoulette BIGINT
AS
BEGIN
	
	SET NOCOUNT ON;

    SELECT 
	   [IdBet]
      ,[IdUser]
      ,[IdRoulette]
      ,[BetValue]
      ,[BetNumber]
      ,[BetColor]
	  ,[IsColorBet]
      ,[DateBet]
	FROM Bets WITH (NOLOCK)
	WHERE [IdRoulette] = @IdRoulette
END
GO
