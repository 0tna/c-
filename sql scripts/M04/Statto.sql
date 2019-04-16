SELECT 
	COUNT(*) AS [Number of events],
	MAX(EventDate) AS [Last Date],
	MIN(EventDate) AS [First Date]
FROM tblEvent