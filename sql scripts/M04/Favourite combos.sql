SELECt 
	Au.AuthorName, 
	Dr.DoctorName,
	COUNT(Ep.Title) AS Episodes
FROM tblAuthor AS [Au] 
	join tblEpisode AS [Ep] ON Ep.AuthorId = Au.AuthorId 
	join tblDoctor AS [Dr] ON Dr.DoctorId = Ep.DoctorId
	GROUP BY Au.AuthorName, Dr.DoctorName
	HAVING COUNT(Ep.Title) > 5
ORDER BY Episodes DESC
