SELECT (EventName + ' (category' + Cast(CategoryID as varchar) + ')') as 'Event(category)', EventDate
FROM tblEvent WHERE CountryID = 1