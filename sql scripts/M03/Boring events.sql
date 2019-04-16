SELECT * FROM(
	SELECT
		EventName, 
		CASE
		when left(EventName, 1) = right(EventName, 1) then 'Same letter'
		when left(EventName,1) in ('a', 'e', 'i', 'o', 'u') and right(EventName,1) in ('a', 'e', 'i', 'o', 'u') then 'Begins and ends with vowel'
		else null
		END AS Verdict
	FROM tblEvent
) as T
	WHERE Verdict is not null