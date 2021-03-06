USE [Roulette]
GO
/****** Object:  StoredProcedure [dbo].[SP_InsertBet]    Script Date: 11/04/2021 22:44:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Miguel Angel Lara Alvarado
-- Create date: 11/04/2021
-- Description:	SP that inserts a bet
-- =============================================
CREATE     PROCEDURE [dbo].[SP_InsertBet]
	@IdUser VARCHAR(20),
	@IdRoulette BIGINT,
	@BetValue BIGINT,
	@BetNumber SMALLINT = NULL,
	@BetColor TINYINT = NULL,
	@IsColorBet BIT
AS
BEGIN
	
	SET NOCOUNT ON;

    INSERT INTO [dbo].[Bets]
           ([IdUser]
           ,[IdRoulette]
           ,[BetValue]
           ,[BetNumber]
           ,[BetColor]
           ,[DateBet]
		   ,[IsColorBet])
     VALUES
           (@IdUser
           ,@IdRoulette
           ,@BetValue
           ,@BetNumber
           ,@BetColor
           ,SYSDATETIME()
		   ,@IsColorBet)

	SELECT @@IDENTITY;
END
GO
