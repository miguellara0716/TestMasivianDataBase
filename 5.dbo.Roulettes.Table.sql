USE [Roulette]
GO
/****** Object:  Table [dbo].[Roulettes]    Script Date: 11/04/2021 22:44:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roulettes](
	[IdRoulette] [bigint] IDENTITY(1,1) NOT NULL,
	[IdState] [tinyint] NOT NULL,
	[DateCreation] [datetime] NOT NULL,
 CONSTRAINT [PK_Roulettes] PRIMARY KEY CLUSTERED 
(
	[IdRoulette] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Roulettes]  WITH CHECK ADD  CONSTRAINT [FK_Roulettes_States] FOREIGN KEY([IdState])
REFERENCES [dbo].[States] ([IdState])
GO
ALTER TABLE [dbo].[Roulettes] CHECK CONSTRAINT [FK_Roulettes_States]
GO
