SELECT 
	Au.AuthorName,
	COUNT(*) AS [Episodes],
	MIN(Ep.EpisodeDate) AS [Earliest Date],
	MAX(Ep.EpisodeDate) AS [Latest Date]
FROM tblEpisode AS Ep join tblAuthor AS Au ON Au.AuthorId = Ep.AuthorId
	GROUP BY Au.AuthorName
ORDER BY [Episodes] DESC