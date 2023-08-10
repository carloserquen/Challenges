USE [ExtendHealth]
GO

/****** Object:  Table [dbo].[Facts_Matches]    Script Date: 8/10/2023 12:08:07 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Facts_Matches](
	[season] [varchar](10) NULL,
	[jornada] [int] NULL,
	[team_name] [varchar](50) NULL,
	[goalsInFavor] [int] NULL,
	[goalsAgainst] [int] NULL,
	[result] [varchar](10) NULL,
	[points] [int] NULL
) ON [PRIMARY]
GO


