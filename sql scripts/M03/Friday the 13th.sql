SELECT 
	EventName, 
	EventDate,
	DATENAME(WEEKDAY, EventDate) as 'Day Name',
	DAY(EventDate) as 'Day number'
FROM tblEvent