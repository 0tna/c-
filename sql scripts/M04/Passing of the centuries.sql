SELECT 
	CASE
		when YEAR(EventDate) >= 1700 and YEAR(EventDate) < 1800 then '18th century'
		when YEAR(EventDate) >= 1800 and YEAR(EventDate) < 1900 then '19th century'
		when YEAR(EventDate) >= 1900 and YEAR(EventDate) < 2000 then '20th century'
		when YEAR(EventDate) >= 2000 and YEAR(EventDate) < 2100 then '21st century'
		else 'UNDEFINED'
	END AS [Century],
	COUNT(EventDate) AS [Number events]
FROM 
	tblEvent
GROUP BY CUBE(
	CASE
		when YEAR(EventDate) >= 1700 and YEAR(EventDate) < 1800 then '18th century'
		when YEAR(EventDate) >= 1800 and YEAR(EventDate) < 1900 then '19th century'
		when YEAR(EventDate) >= 1900 and YEAR(EventDate) < 2000 then '20th century'
		when YEAR(EventDate) >= 2000 and YEAR(EventDate) < 2100 then '21st century'
		else 'UNDEFINED'
	END)
ORDER BY
	Century