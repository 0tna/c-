SELECT 
	Con.ContinentName,
	Co.CountryName,
	COUNT(EventID) AS [Number of Events]
FROM tblEvent AS [Ev] 
	join tblCountry AS [Co] ON Co.CountryID = Ev.CountryID 
	join tblContinent AS [Con] ON Con.ContinentID = Co.ContinentID
	WHERE Con.ContinentID != 3
	GROUP BY Co.CountryName, Con.ContinentName
	HAVING COUNT(EventID) > 5
ORDER BY Co.CountryName ASC