SELECT 
	Ca.CategoryName,
	Count(EventName) AS [Number of Events]
FROM tblEvent AS [Ev] join tblCategory AS [Ca] ON Ca.CategoryID = Ev.CategoryID
 GROUP BY Ca.CategoryName
ORDER BY [Number of Events] DESC