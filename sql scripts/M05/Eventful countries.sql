SELECT 
	Co.CountryName,
	COUNT(Ev.EventID)
FROM 
	tblEvent AS [Ev]
	join tblCountry AS [Co] ON Ev.CountryID = Co.CountryID
GROUP BY 
	Co.CountryName
HAVING
	COUNT(Ev.EventID) >= 8;


/*NEW QUERY*/
SELECT 
	Co.CountryName
FROM 
	tblCountry AS [CO]
WHERE
	Co.CountryID = (
		SELECT Ico.CountryID
		FROM tblCountry AS [ICo] join tblEvent AS [IEv] ON ICo.CountryID = IEv.CountryID
		WHERE 
	)
	