SELECT 
	left(CategoryName, 1) AS [Category initial],
	COUNT(Ev.EventID) AS [Number of events],
	AVG(CAST(LEN(Ev.EventName) AS DECIMAL)) AS [Average event name lenght]
FROM 
	tblCategory AS [Ca]
	join tblEvent AS [Ev] ON Ca.CategoryID = Ev.CategoryID
GROUP BY 
	left(CategoryName, 1)