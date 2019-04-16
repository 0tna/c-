SELECT 
	EventName, 
	EventDetails 
FROM 
	tblEvent
WHERE
	CountryID not in (
		SELECT TOP 30 CountryID
		FROM tblCountry
		ORDER BY CountryName DESC
	) and 
	CategoryID not in (
		SELECT TOP 15 CategoryID
		FROM tblCategory
		ORDER BY CategoryName DESC
	)
ORDER BY
	EventDate
