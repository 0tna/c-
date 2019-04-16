SELECT 
	EventName, 
	EventDate,
	DATEDIFF(day, '9/14/2001', EventDate) as 'Days Offset',
	ABS(DATEDIFF(day, '9/14/2001', EventDate)) as 'Days Difference'
FROM tblEvent 
	WHERE year(EventDate) >= 2001 
ORDER BY EventDate ASC