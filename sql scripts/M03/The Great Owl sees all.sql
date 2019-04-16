SELECT 
	EventName, 
	EventDate as 'NotFormatted',
	FORMAT(EventDate, 'd', 'zu') AS UsingFormat,
	CONVERT(varchar, EventDate, 5) AS UsingConvert
FROM tblEvent 
	WHERE year(EventDate) = 2001