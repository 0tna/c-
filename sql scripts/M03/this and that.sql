SELECT 
	EventName, 
	EventDate, 
	CHARINDEX('this', EventDetails) as 'thisPosition', 
	CHARINDEX('that', EventDetails) as 'thatPosition', 
	(CHARINDEX('that', EventDetails) - CHARINDEX('this', EventDetails)) as 'Offset' 
FROM tblEvent 
WHERE EventDetails like '%this%that%'