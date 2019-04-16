SELECT
	Ev.EventName,
	Ev.EventDate,
	Co.CountryName
FROM 
	tblEvent AS [Ev]
	join tblCountry AS [Co] ON Co.CountryID = Ev.CountryID
WHERE
	EventDate > (
		SELECT MAX (EventDate)
		FROM tblEvent
		WHERE CountryID = 21
	)
ORDER BY
	EventDate DESC