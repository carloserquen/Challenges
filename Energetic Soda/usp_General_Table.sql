USE [ExtendHealth]
GO

/****** Object:  StoredProcedure [Reports].[usp_CallsByEmployee]    Script Date: 8/9/2023 3:37:43 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Carlos Serquen
-- Create date: 8/9/2023
-- =============================================
Create PROCEDURE [dbo].[usp_General_Table] 

@season VARCHAR(50) = Null

AS
BEGIN
--SET NOCOUNT ON;

SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;

	SELECT
		team_name AS Team
		,SUM(points) AS 'Total points'
		,COUNT(jornada) AS 'Matches'
		,SUM(goalsAgainst) AS 'Goals Against'
		,COUNT(CASE WHEN result = 'DRAW' THEN 1 END) AS 'Draw matches'
		,COUNT(CASE WHEN result = 'WIN' THEN 1 END) AS 'Win matches'
		,COUNT(CASE WHEN result = 'LOST' THEN 1 END) AS 'Lost matches'
		,SUM(goalsInFavor) AS 'Goals In Favor'
		,(COUNT(CASE WHEN result = 'WIN' THEN 1 END)*100)/COUNT(jornada) AS 'Win ratio'
	FROM
		Facts_Matches
	WHERE
		season = @season
	GROUP BY team_name
	ORDER BY 2 DESC
END