SELECT 
	Con.ContinentName,
	Ev.EventName
FROM 
	tblEvent AS [Ev]
	join tblCountry AS [Co] ON Ev.CountryID = Co.CountryID
	join tblContinent AS [Con] ON Con.ContinentID = Co.ContinentID
WHERE 
	Con.ContinentName in (
		SELECT TOP 3 Con.ContinentName
		FROM tblEvent AS [Ev] join tblCountry AS [Co] ON Ev.CountryID = Co.CountryID join tblContinent AS [Con] ON Con.ContinentID = Co.ContinentID
		GROUP BY Con.ContinentName
		ORDER BY COUNT(Ev.EventID)
	)
