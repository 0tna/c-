SELECT 
	EventName, 
	EventDate,
	(
		DATENAME(WEEKDAY, EventDate) + ' ' + 
		CAST(DAY(EventDate) as nvarchar) + 
		CASE
			when DAY(EventDate) = 1 then 'st '
			when DAY(EventDate) = 2 then 'nd '
			when DAY(EventDate) = 3 then 'rd '
			else 'th '
		END + 
		DATENAME(MONTH, EventDate) + ' '  + 
		CAST(YEAR(EventDate) as nvarchar)
	)AS 'Full date'
FROM tblEvent 
ORDER BY EventDate ASC