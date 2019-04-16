SELECT E.EventName, E.EventDate, Country.CountryName, Continent.ContinentName FROM tblEvent as E
inner join tblCountry as Country on E.CountryID = Country.CountryID
inner join tblContinent as Continent on Country.ContinentID = Continent.ContinentID
WHERE Country.CountryName like '%Russia%' or Continent.ContinentName like '%Antarctic%'