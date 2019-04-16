SELECT
	CountryName,
	CASE 
		when ContinentID = 1 or ContinentID = 3 then 'Eurasia'
		when ContinentID = 5 or ContinentID = 6 then 'Americas'
		when ContinentID = 2 or ContinentID = 4 then 'Somewhere Hot'
		when ContinentID = 7 then 'Somewhere Cold'
		else 'Somewhere Else'
	END AS 'Country Location'
FROM tblCountry ORDER BY [Country Location] DESC