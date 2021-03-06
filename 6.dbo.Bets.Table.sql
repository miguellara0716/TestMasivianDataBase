USE [Roulette]
GO
/****** Object:  Table [dbo].[Bets]    Script Date: 11/04/2021 22:44:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bets](
	[IdBet] [bigint] IDENTITY(1,1) NOT NULL,
	[IdUser] [varchar](20) NOT NULL,
	[IdRoulette] [bigint] NOT NULL,
	[BetValue] [bigint] NOT NULL,
	[BetNumber] [smallint] NULL,
	[BetColor] [tinyint] NULL,
	[DateBet] [datetime] NOT NULL,
	[IsColorBet] [bit] NOT NULL,
 CONSTRAINT [PK_Bets] PRIMARY KEY CLUSTERED 
(
	[IdBet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Bets]  WITH CHECK ADD  CONSTRAINT [FK_Bets_Colors] FOREIGN KEY([BetColor])
REFERENCES [dbo].[Colors] ([IdColor])
GO
ALTER TABLE [dbo].[Bets] CHECK CONSTRAINT [FK_Bets_Colors]
GO
ALTER TABLE [dbo].[Bets]  WITH CHECK ADD  CONSTRAINT [FK_Bets_Roulettes] FOREIGN KEY([IdRoulette])
REFERENCES [dbo].[Roulettes] ([IdRoulette])
GO
ALTER TABLE [dbo].[Bets] CHECK CONSTRAINT [FK_Bets_Roulettes]
GO
