USE [Roulette]
GO
/****** Object:  Table [dbo].[Colors]    Script Date: 11/04/2021 22:44:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Colors](
	[IdColor] [tinyint] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](20) NOT NULL,
	[DateCreation] [datetime] NOT NULL,
 CONSTRAINT [PK_Colors] PRIMARY KEY CLUSTERED 
(
	[IdColor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
