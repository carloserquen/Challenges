USE [ExtendHealth]
GO

/****** Object:  Table [dbo].[Investments]    Script Date: 8/10/2023 12:08:13 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Investments](
	[team_name] [varchar](50) NULL,
	[Investment_required] [int] NULL,
	[Profit_per_goal] [int] NULL
) ON [PRIMARY]
GO


