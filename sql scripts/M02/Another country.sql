SELECT * FROM tblCountry as C
left outer join tblEvent as E on C.CountryID = E.CountryID
WHERE E.EventID is null